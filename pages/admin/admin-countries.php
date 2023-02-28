<?php include 'admin-header.php'; ?>
<?php include 'config.php';?>

<h1>Listes des countries</h1>

<?php 
$getCountries = $db->query('select * from countries');
?>

<?php include 'admin-footer.php'; ?>