    ipv6_list = [
        "fe80:0000:0000:0000:0000:0eff:febe:9f16",
        "2a01:4f8a:0000:0000:0000:ffff:fe00:1111",
        "2001:0db8:1234:5678:89ab:cdef:0000:1234",
        "fcec:0000:0000:0000:0000:ffff:ffff:ffff",
        "2607:f8b0:4c00:0000:0000:0000:0000:0001",
        "2002:b3ff:fe00:0000:0000:ffff:ffff:ffff",
        "c000:0000:0000:0000:0000:0000:0000:ffff",
        "2001:0db8:85a3:0000:0000:8a2e:0370:1111",
        "fd00:0000:0000:0000:0000:ffff:ffff:ffff",
        "2400:cb00:0000:0000:0000:ffff:ffff:ffff",
    ]
    random_float = random.random() * 1.0
    random_index = math.floor(random_float * len(ipv6_list))

