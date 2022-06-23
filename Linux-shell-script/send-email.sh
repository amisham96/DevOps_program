#!/bin/bash
recipient="sharma.ami.07@gmail.com"
subject="Greetings"
message="Welcome to Ubuntu"
`mail -s $subject $recipient <<< $message`
