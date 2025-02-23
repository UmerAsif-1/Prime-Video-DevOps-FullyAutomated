variable "ec2_sg_name" {}



resource "aws_security_group" "ec2_sg_" {

    name = var.ec2_sg_name
    description = "Allow inbound traffic"



#ssh with port 22
ingress {
    description = "SSH from anywhere"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

}

#http with port 80
ingress {
    description = "HTTP from anywhere"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

#https with port 443
ingress {
    description = "HTTPS from anywhere"
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

#2379-2380 for etcd
ingress {
    description = "etcd from anywhere"
    from_port = 2379
    to_port = 2380
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

#grafana with port 3000
ingress {
    description = "npm port 3000 from anywhere"
    from_port = 3000
    to_port = 3000
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

#kube-apiserver with port 6443
ingress {
    description = "kube-apiserver from anywhere"
    from_port = 6443
    to_port = 6443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

#Jenkins with port 8080
ingress {
    description = "Jenkins from anywhere"
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

#Sonarqube with port 9000
ingress {
    description = "Sonarqube from anywhere"
    from_port = 9000
    to_port = 9000
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0"]
}

#Promehteus with port 9090
ingress {
    description = "Prometheus from anywhere"
    from_port = 9090
    to_port = 9090
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}   

#Prometheus metrics with port 9100
ingress {
    description = "Prometheus metrics from anywhere"
    from_port = 9100
    to_port = 9100
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
}

#kubelet with port 10250-10260
ingress {
    description = "kubelet from anywhere"
    from_port = 10250
    to_port = 10260
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
}

#Nodeport with port 30000-32767 
ingress {
    description = "Nodeport from anywhere"
    from_port = 30000
    to_port = 32767
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}   


#outbound rules
egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}

tags = {

    Name = var.ec2_sg_name

}

}

