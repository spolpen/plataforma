<?php

elgg_register_event_handler('init', 'system', 'somenergia_upgrade_init');

elgg_register_event_handler('upgrade', 'system', 'somenergia_upgrade_launch');

function somenergia_upgrade_init() {
    
}

/**
 * Launch Som Energia upgrades 
 */
function somenergia_upgrade_launch() {
    error_log('=> Upgrading launched by Som Energia upgrade plugin');

    if (!elgg_is_active_plugin('group_operators')) {
        upgrade_old_group_operators();
    }
}

/**
 * Change old group operators to new group admin
 */
function upgrade_old_group_operators() {
    $groupsWithOperators = elgg_get_entities_from_relationship(array("relationship" => "operator", "limit" => 0));
    if ($groupsWithOperators) {
        error_log('- Upgrading groups with old group operators: ' . count($groupsWithOperators));
        foreach ($groupsWithOperators as $group) {
            $group_id = $group->getGUID();
            error_log('-- Group detected with operators:  ' . $group_id . ' ' . $group->getURL());
            upgrade_group_operators_group($group_id);
        }
    }
}

function upgrade_group_operators_group($group_id) {
    $groupOperators = elgg_get_entities_from_relationship(array("relationship" => "operator", "inverse_relationship" => true, "relationship_guid" => $group_id, "limit" => 0));
    foreach ($groupOperators as $operator) {
        $operator_id = $operator->getGUID();
        error_log('--- Old group operator:  ' . $operator_id . ' ' . $operator->getURL());
        upgrade_group_operators_user($group_id, $operator_id);
    }
}

function upgrade_group_operators_user($group_id, $operator_id) {
    if (check_entity_relationship($operator_id, 'operator', $group_id)) {
        if (remove_entity_relationship($operator_id, 'operator', $group_id)) {
            error_log('--- Operator removed');
            if (!check_entity_relationship($operator_id, 'group_admin', $group_id)) {
                if (add_entity_relationship($operator_id, 'group_admin', $group_id)) {
                    error_log('--- Operator ' . $operator_id . ' is now group_admin ' . $group_id);
                } else {
                    error_log('Fail upgrading operator');
                }
            }
        } else {
            error_log('Fail upgrading operator');
        }
    }
}
