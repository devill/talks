<?php

include_once 'thriftIncludes.php';
include_once 'thriftProtocol.php';

$aritmectiOperation = new ArithmeticOperation();
$aritmectiOperation->op = BinaryOperation::ADDITION;
$aritmectiOperation->lh_term = rand();
$aritmectiOperation->rh_term = rand();

$client= new CalculatorClient(ThriftProtocol::get());

echo "$aritmectiOperation->lh_term + $aritmectiOperation->rh_term = {$client->calc($aritmectiOperation)}\n";

$client->run_task();

ThriftProtocol::close();

