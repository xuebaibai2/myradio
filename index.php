<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />

        <title>环球故事会-广播取回器</title>
        
    </head>
    <body>
        <?php
            $dirs = array_filter(glob('*'),'is_dir');
            foreach ($dirs as $folder) {
                echo "<a href={$folder}>{$folder}</a>&nbsp&nbsp&nbsp";
            }
        ?>
    </body>
</html>
