<?php
/*
 You may not change or alter any portion of this comment or credits
 of supporting developers from this source code or any supporting source code
 which is considered copyrighted (c) material of the original comment or credit authors.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
*/

/**
 * xmcontact module
 *
 * @copyright       XOOPS Project (http://xoops.org)
 * @license         GNU GPL 2 (http://www.gnu.org/licenses/old-licenses/gpl-2.0.html)
 * @author          Mage Gregory (AKA Mage)
 */

// Call header
include dirname(__FILE__) . '/header.php';
// Display Admin header
xoops_cp_header();

$xoopsTpl->assign('navigation', $admin_class->addNavigation('about.php'));
$xoopsTpl->assign('renderabout', $admin_class->renderabout('9MYQB7GUK5MCS', false));

// Call template file
$xoopsTpl->display(XOOPS_ROOT_PATH . '/modules/xmcontact/templates/admin/xmcontact_about.tpl');
// Call footer
xoops_cp_footer();