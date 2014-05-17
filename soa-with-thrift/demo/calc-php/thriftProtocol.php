<?php

class ThriftProtocol
{
    private static $transport = NULL;
    private static $protocol = NULL;

    static function get()
    {
        if(self::$protocol == NULL)
        {
            self::$transport = new TSocket('localhost', 9090);
            self::$transport->open();
            self::$protocol = new TBinaryProtocol(self::$transport);
        }

        return self::$protocol;
    }

    static function close()
    {
        self::$transport->close();
    }
}
