<?php
//Copyright (c) 2016 iFeiwu.com
 class TokenAuth implements iAuthenticate { function __isAuthenticated() { $token = $_GET["\164\157\153\x65\156"]; return $token && $token == TokenAuth::key() ? TRUE : FALSE; } function key() { return require "\164\157\153\x65\x6e\56\160\150\160"; } }
