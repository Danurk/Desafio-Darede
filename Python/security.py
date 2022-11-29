import boto3

ec2 = boto3.client('ec2')
client = boto3.client('sns')

response = ec2.describe_security_groups(GroupIds=['sg-024ab87aa99afcdb0','sg-0b09d936f000fade2','vpc-03ff4222593a1c0a0','sg-033d9666a2f4598bb'])

for i in response['SecurityGroups']:
    print("The Ingress rules are as follows: ")
    for c in response['SecurityGroups']:
        print("Security Group: "+c['GroupId'])
    for j in i['IpPermissions']:
        print("IP Protocol: "+j['IpProtocol'])
        try:
            print("PORT: "+str(j['FromPort']))
            for k in j['IpRanges']:
                print("IP Ranges: "+k['CidrIp'])
        except Exception:
            print("No value for ports and ip ranges available for this security group")
            continue
        
print(k)
if k == {'CidrIp': '0.0.0.0/0'}:
    response = client.publish(TopicArn='arn:aws:sns:us-east-1:551940803425:Python',Message="O seguinte grupo tem portas abertas para o mundo: "+c['GroupId'])
    print(response)
