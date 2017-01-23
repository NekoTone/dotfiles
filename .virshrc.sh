virt-addr() {
    VM="$1"
    arp -an | grep "`virsh dumpxml $VM | grep "mac address" | sed "s/.*'\(.*\)'.*/\1/g"`" | awk '{ gsub(/[\(\)]/,"",$2); print $2 }'
}

virt-addrs() {
    echo "----------------------------------------------";
    # Print column headers
    printf "%-30s %s\n" "VM Name" "IP Address";
    echo "----------------------------------------------";
    # Output the system list (shouldn't be using the --all flag, but hey)
    virsh -c qemu:///system list --all | grep -o '[0-9]* [a-z]*.*running' | while read -r line;
    do
        # Get the VM names and then pass them to virt-addr
        line_cropped=$(echo "$line" | sed 's/[0-9]* [ ]*\([-._0-9a-zA-Z]*\)[ ]*running/\1/' );
        printf "%-30s %s\n" "$line_cropped" $( virt-addr "$line_cropped" );
        #printf "$line_cropped"
    done;
    echo "----------------------------------------------";
}
