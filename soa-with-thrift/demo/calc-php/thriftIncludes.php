<?php

$GLOBALS['THRIFT_ROOT'] = 'thrift';

require_once 'thrift/Thrift.php';
require_once 'thrift/transport/TTransport.php';
require_once 'thrift/transport/TSocket.php';
require_once 'thrift/protocol/TBinaryProtocol.php';
require_once 'thrift/transport/TFramedTransport.php';
require_once 'thrift/transport/TBufferedTransport.php';

require_once 'thrift/packages/calc/Calculator.php';
require_once 'thrift/packages/calc/calc_types.php';