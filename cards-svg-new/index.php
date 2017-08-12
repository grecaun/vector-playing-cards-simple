<html>
    <head></head>
    <body>
        <div style="display:inline-block;">
            <?php
            $dir    = ".";
            $files  = scandir($dir);
            foreach ($files as $file) {
                if ( preg_match('/\.(svg|png)$/i', $file) ) {
                    echo "<img style='padding:2px' src='$file' />";
                }
            }
        ?>
        </div>
    </body>
</html>