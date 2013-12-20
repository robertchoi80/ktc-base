


file "/etc/hosts" do
    mode 00644
    content  "
127.0.0.1 myhost
127.0.1.1 foo.bar foobar
10.10.10.1  baz baz
10.1.1.1 baz bad.baz
"
end
