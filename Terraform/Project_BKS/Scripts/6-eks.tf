resource "aws_iam_role" "Project_BKY" {
  name = "eks-cluster-Project_BKY"

  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy_attachment" "Project_BKY-AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.Project_BKY.name
}

resource "aws_eks_cluster" "Project_BKY" {
  name            = "Project_BKY"
  role_arn = aws_iam_role.Project_BKY.arn

  vpc_config {
    subnet_ids = [
      aws_subnet.private-eu-central-1a.id,
      aws_subnet.private-eu-central-1b.id,
      aws_subnet.public-eu-central-1a.id,
      aws_subnet.public-eu-central-1b.id
    ]
  }

  depends_on = [aws_iam_role_policy_attachment.Project_BKY-AmazonEKSClusterPolicy]
}