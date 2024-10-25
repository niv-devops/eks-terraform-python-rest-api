security_group_id = "your-security-group-id"  # Replace with your actual security group ID
public_subnets    = [aws_subnet.public_eu_central_1a.id, aws_subnet.public_eu_central_1b.id]
private_subnets   = [aws_subnet.private_eu_central_1a.id, aws_subnet.private_eu_central_1b.id]
