import boto3

client = boto3.client('eks')

response = client.update_nodegroup_config(
    clusterName='carlos-cluster',
    nodegroupName='carlos-nodegroup',
    scalingConfig={
        'minSize': 0,
        'maxSize': 4,
        'desiredSize': 0
        },
    )