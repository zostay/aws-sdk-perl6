# THIS FILE IS AUTO-GENERATED. DO NOT EDIT.
use v6;

use AWS::SDK::Service;
use AWS::SDK::Shape;

class AWS::SDK::Service::ElastiCache:ver<2014-09-30.0> does AWS::SDK::Service {

    method api-version() { '2014-09-30' }
    method service() { 'elasticache' }

    class DeleteSnapshotResult { ... }
    class CreateCacheSubnetGroupResult { ... }
    class CacheSubnetGroup { ... }
    class CacheNodeTypeSpecificValue { ... }
    class InvalidCacheParameterGroupStateFault { ... }
    class PurchaseReservedCacheNodesOfferingResult { ... }
    class CreateCacheClusterResult { ... }
    class CacheSecurityGroupQuotaExceededFault { ... }
    class CacheParameterGroup { ... }
    class CacheSubnetGroupAlreadyExistsFault { ... }
    class ClusterQuotaForCustomerExceededFault { ... }
    class DeleteCacheSecurityGroupMessage { ... }
    class ReservedCacheNodeQuotaExceededFault { ... }
    class CacheNode { ... }
    class CacheClusterAlreadyExistsFault { ... }
    class CopySnapshotMessage { ... }
    class CreateReplicationGroupMessage { ... }
    class DeleteCacheParameterGroupMessage { ... }
    class InvalidSnapshotStateFault { ... }
    class CacheEngineVersion { ... }
    class AuthorizationAlreadyExistsFault { ... }
    class DescribeSnapshotsMessage { ... }
    class ModifyReplicationGroupResult { ... }
    class CreateCacheParameterGroupResult { ... }
    class SnapshotNotFoundFault { ... }
    class NotificationConfiguration { ... }
    class ModifyReplicationGroupMessage { ... }
    class CacheSubnetGroupQuotaExceededFault { ... }
    class DescribeCacheParameterGroupsMessage { ... }
    class InvalidCacheSecurityGroupStateFault { ... }
    class DeleteCacheClusterResult { ... }
    class SecurityGroupMembership { ... }
    class CreateSnapshotResult { ... }
    class RebootCacheClusterMessage { ... }
    class CacheParameterGroupNameMessage { ... }
    class CacheCluster { ... }
    class CacheNodeTypeSpecificParameter { ... }
    class DescribeCacheParametersMessage { ... }
    class DescribeCacheSubnetGroupsMessage { ... }
    class InsufficientCacheClusterCapacityFault { ... }
    class InvalidVPCNetworkStateFault { ... }
    class Snapshot { ... }
    class ResetCacheParameterGroupMessage { ... }
    class ReservedCacheNodeMessage { ... }
    class CacheParameterGroupAlreadyExistsFault { ... }
    class EngineDefaults { ... }
    class Subnet { ... }
    class ReplicationGroupNotFoundFault { ... }
    class ReplicationGroup { ... }
    class DeleteCacheSubnetGroupMessage { ... }
    class Event { ... }
    class ModifyCacheSubnetGroupResult { ... }
    class SubnetInUse { ... }
    class ModifyCacheSubnetGroupMessage { ... }
    class CacheSubnetGroupMessage { ... }
    class DeleteReplicationGroupMessage { ... }
    class CacheSecurityGroupMembership { ... }
    class CacheParameterGroupStatus { ... }
    class EventsMessage { ... }
    class InvalidParameterValueException { ... }
    class ReplicationGroupPendingModifiedValues { ... }
    class DescribeEngineDefaultParametersMessage { ... }
    class DescribeReservedCacheNodesMessage { ... }
    class ReservedCacheNode { ... }
    class NodeGroupMember { ... }
    class CacheSecurityGroupNotFoundFault { ... }
    class CacheParameterGroupNotFoundFault { ... }
    class CacheParameterGroupDetails { ... }
    class CacheSubnetQuotaExceededFault { ... }
    class CreateCacheClusterMessage { ... }
    class DeleteCacheClusterMessage { ... }
    class DescribeCacheEngineVersionsMessage { ... }
    class DescribeCacheSecurityGroupsMessage { ... }
    class ModifyCacheParameterGroupMessage { ... }
    class PurchaseReservedCacheNodesOfferingMessage { ... }
    class RebootCacheClusterResult { ... }
    class CacheClusterNotFoundFault { ... }
    class CacheClusterMessage { ... }
    class AuthorizationNotFoundFault { ... }
    class CacheSubnetGroupInUse { ... }
    class DeleteReplicationGroupResult { ... }
    class CopySnapshotResult { ... }
    class NodeQuotaForCustomerExceededFault { ... }
    class NodeGroup { ... }
    class CacheSecurityGroup { ... }
    class AuthorizeCacheSecurityGroupIngressMessage { ... }
    class CreateCacheSubnetGroupMessage { ... }
    class DescribeCacheClustersMessage { ... }
    class ReservedCacheNodesOfferingMessage { ... }
    class ReservedCacheNodeNotFoundFault { ... }
    class SnapshotQuotaExceededFault { ... }
    class CreateCacheSecurityGroupMessage { ... }
    class Endpoint { ... }
    class ReservedCacheNodesOfferingNotFoundFault { ... }
    class CacheSecurityGroupMessage { ... }
    class CacheEngineVersionMessage { ... }
    class AvailabilityZone { ... }
    class DeleteSnapshotMessage { ... }
    class RevokeCacheSecurityGroupIngressMessage { ... }
    class PendingModifiedValues { ... }
    class NodeQuotaForClusterExceededFault { ... }
    class CacheParameterGroupsMessage { ... }
    class AuthorizeCacheSecurityGroupIngressResult { ... }
    class ParameterNameValue { ... }
    class Parameter { ... }
    class ModifyCacheClusterMessage { ... }
    class CreateReplicationGroupResult { ... }
    class CreateCacheParameterGroupMessage { ... }
    class DescribeEventsMessage { ... }
    class DescribeEngineDefaultParametersResult { ... }
    class ReplicationGroupMessage { ... }
    class NodeSnapshot { ... }
    class CreateSnapshotMessage { ... }
    class DescribeSnapshotsListMessage { ... }
    class InvalidReplicationGroupStateFault { ... }
    class ReplicationGroupAlreadyExistsFault { ... }
    class CacheParameterGroupQuotaExceededFault { ... }
    class CacheSubnetGroupNotFoundFault { ... }
    class CreateCacheSecurityGroupResult { ... }
    class RecurringCharge { ... }
    class InvalidSubnet { ... }
    class ReservedCacheNodesOffering { ... }
    class ReservedCacheNodeAlreadyExistsFault { ... }
    class DescribeReplicationGroupsMessage { ... }
    class EC2SecurityGroup { ... }
    class InvalidParameterCombinationException { ... }
    class RevokeCacheSecurityGroupIngressResult { ... }
    class ModifyCacheClusterResult { ... }
    class SnapshotFeatureNotSupportedFault { ... }
    class SnapshotAlreadyExistsFault { ... }
    class DescribeReservedCacheNodesOfferingsMessage { ... }
    class CacheSecurityGroupAlreadyExistsFault { ... }
    class InvalidCacheClusterStateFault { ... }

    class DeleteSnapshotResult:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Snapshot $.snapshot is required is aws-parameter('Snapshot');
    }

    class CreateCacheSubnetGroupResult:ver<2014-09-30.0> does AWS::SDK::Shape {
        has CacheSubnetGroup $.cache-subnet-group is required is aws-parameter('CacheSubnetGroup');
    }

    subset SnapshotArnsList of List[Str];

    subset NodeGroupMemberList of List[NodeGroupMember];

    class CacheSubnetGroup:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.cache-subnet-group-name is required is aws-parameter('CacheSubnetGroupName');
        has Str $.vpc-id is required is aws-parameter('VpcId');
        has SubnetList $.subnets is required is aws-parameter('Subnets');
        has Str $.cache-subnet-group-description is required is aws-parameter('CacheSubnetGroupDescription');
    }

    subset CacheSecurityGroupNameList of List[Str];

    class CacheNodeTypeSpecificValue:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.value is required is aws-parameter('Value');
        has Str $.cache-node-type is required is aws-parameter('CacheNodeType');
    }

    subset CacheEngineVersionList of List[CacheEngineVersion];

    subset CacheClusterList of List[CacheCluster];

    class InvalidCacheParameterGroupStateFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class PurchaseReservedCacheNodesOfferingResult:ver<2014-09-30.0> does AWS::SDK::Shape {
        has ReservedCacheNode $.reserved-cache-node is required is aws-parameter('ReservedCacheNode');
    }

    class CreateCacheClusterResult:ver<2014-09-30.0> does AWS::SDK::Shape {
        has CacheCluster $.cache-cluster is required is aws-parameter('CacheCluster');
    }

    subset ReservedCacheNodeList of List[ReservedCacheNode];

    class CacheSecurityGroupQuotaExceededFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class CacheParameterGroup:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.description is required is aws-parameter('Description');
        has Str $.cache-parameter-group-family is required is aws-parameter('CacheParameterGroupFamily');
        has Str $.cache-parameter-group-name is required is aws-parameter('CacheParameterGroupName');
    }

    class CacheSubnetGroupAlreadyExistsFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class ClusterQuotaForCustomerExceededFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class DeleteCacheSecurityGroupMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.cache-security-group-name is required is aws-parameter('CacheSecurityGroupName');
    }

    subset ReservedCacheNodesOfferingList of List[ReservedCacheNodesOffering];

    class ReservedCacheNodeQuotaExceededFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    subset ParametersList of List[Parameter];

    class CacheNode:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.parameter-group-status is required is aws-parameter('ParameterGroupStatus');
        has Str $.cache-node-id is required is aws-parameter('CacheNodeId');
        has Endpoint $.endpoint is required is aws-parameter('Endpoint');
        has DateTime $.cache-node-create-time is required is aws-parameter('CacheNodeCreateTime');
        has Str $.source-cache-node-id is required is aws-parameter('SourceCacheNodeId');
        has Str $.customer-availability-zone is required is aws-parameter('CustomerAvailabilityZone');
        has Str $.cache-node-status is required is aws-parameter('CacheNodeStatus');
    }

    class CacheClusterAlreadyExistsFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class CopySnapshotMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.target-snapshot-name is required is aws-parameter('TargetSnapshotName');
        has Str $.source-snapshot-name is required is aws-parameter('SourceSnapshotName');
    }

    class CreateReplicationGroupMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has SecurityGroupIdsList $.security-group-ids is aws-parameter('SecurityGroupIds');
        has Str $.cache-subnet-group-name is aws-parameter('CacheSubnetGroupName');
        has Str $.snapshot-window is aws-parameter('SnapshotWindow');
        has Str $.notification-topic-arn is aws-parameter('NotificationTopicArn');
        has AvailabilityZonesList $.preferred-cache-cluster-azs is aws-parameter('PreferredCacheClusterAZs');
        has Bool $.automatic-failover-enabled is aws-parameter('AutomaticFailoverEnabled');
        has Str $.primary-cluster-id is aws-parameter('PrimaryClusterId');
        has SnapshotArnsList $.snapshot-arns is aws-parameter('SnapshotArns');
        has Str $.replication-group-description is required is aws-parameter('ReplicationGroupDescription');
        has Str $.snapshot-name is aws-parameter('SnapshotName');
        has CacheSecurityGroupNameList $.cache-security-group-names is aws-parameter('CacheSecurityGroupNames');
        has Str $.cache-parameter-group-name is aws-parameter('CacheParameterGroupName');
        has Str $.engine is aws-parameter('Engine');
        has Int $.snapshot-retention-limit is aws-parameter('SnapshotRetentionLimit');
        has Str $.cache-node-type is aws-parameter('CacheNodeType');
        has Str $.replication-group-id is required is aws-parameter('ReplicationGroupId');
        has Bool $.auto-minor-version-upgrade is aws-parameter('AutoMinorVersionUpgrade');
        has Int $.port is aws-parameter('Port');
        has Str $.preferred-maintenance-window is aws-parameter('PreferredMaintenanceWindow');
        has Str $.engine-version is aws-parameter('EngineVersion');
        has Int $.num-cache-clusters is aws-parameter('NumCacheClusters');
    }

    class DeleteCacheParameterGroupMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.cache-parameter-group-name is required is aws-parameter('CacheParameterGroupName');
    }

    class InvalidSnapshotStateFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class CacheEngineVersion:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.cache-parameter-group-family is required is aws-parameter('CacheParameterGroupFamily');
        has Str $.cache-engine-description is required is aws-parameter('CacheEngineDescription');
        has Str $.engine is required is aws-parameter('Engine');
        has Str $.cache-engine-version-description is required is aws-parameter('CacheEngineVersionDescription');
        has Str $.engine-version is required is aws-parameter('EngineVersion');
    }

    class AuthorizationAlreadyExistsFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class DescribeSnapshotsMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.snapshot-name is required is aws-parameter('SnapshotName');
        has Str $.cache-cluster-id is required is aws-parameter('CacheClusterId');
        has Str $.snapshot-source is required is aws-parameter('SnapshotSource');
        has Str $.marker is required is aws-parameter('Marker');
        has Int $.max-records is required is aws-parameter('MaxRecords');
    }

    subset EC2SecurityGroupList of List[EC2SecurityGroup];

    class ModifyReplicationGroupResult:ver<2014-09-30.0> does AWS::SDK::Shape {
        has ReplicationGroup $.replication-group is required is aws-parameter('ReplicationGroup');
    }

    class CreateCacheParameterGroupResult:ver<2014-09-30.0> does AWS::SDK::Shape {
        has CacheParameterGroup $.cache-parameter-group is required is aws-parameter('CacheParameterGroup');
    }

    class SnapshotNotFoundFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class NotificationConfiguration:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.topic-arn is required is aws-parameter('TopicArn');
        has Str $.topic-status is required is aws-parameter('TopicStatus');
    }

    class ModifyReplicationGroupMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has SecurityGroupIdsList $.security-group-ids is aws-parameter('SecurityGroupIds');
        has Str $.snapshot-window is aws-parameter('SnapshotWindow');
        has Str $.notification-topic-arn is aws-parameter('NotificationTopicArn');
        has Bool $.automatic-failover-enabled is aws-parameter('AutomaticFailoverEnabled');
        has Str $.primary-cluster-id is aws-parameter('PrimaryClusterId');
        has Str $.replication-group-description is aws-parameter('ReplicationGroupDescription');
        has Str $.cache-parameter-group-name is aws-parameter('CacheParameterGroupName');
        has CacheSecurityGroupNameList $.cache-security-group-names is aws-parameter('CacheSecurityGroupNames');
        has Int $.snapshot-retention-limit is aws-parameter('SnapshotRetentionLimit');
        has Str $.snapshotting-cluster-id is aws-parameter('SnapshottingClusterId');
        has Str $.replication-group-id is required is aws-parameter('ReplicationGroupId');
        has Bool $.auto-minor-version-upgrade is aws-parameter('AutoMinorVersionUpgrade');
        has Str $.engine-version is aws-parameter('EngineVersion');
        has Str $.preferred-maintenance-window is aws-parameter('PreferredMaintenanceWindow');
        has Bool $.apply-immediately is aws-parameter('ApplyImmediately');
        has Str $.notification-topic-status is aws-parameter('NotificationTopicStatus');
    }

    class CacheSubnetGroupQuotaExceededFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class DescribeCacheParameterGroupsMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.cache-parameter-group-name is required is aws-parameter('CacheParameterGroupName');
        has Str $.marker is required is aws-parameter('Marker');
        has Int $.max-records is required is aws-parameter('MaxRecords');
    }

    class InvalidCacheSecurityGroupStateFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class DeleteCacheClusterResult:ver<2014-09-30.0> does AWS::SDK::Shape {
        has CacheCluster $.cache-cluster is required is aws-parameter('CacheCluster');
    }

    class SecurityGroupMembership:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.status is required is aws-parameter('Status');
        has Str $.security-group-id is required is aws-parameter('SecurityGroupId');
    }

    class CreateSnapshotResult:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Snapshot $.snapshot is required is aws-parameter('Snapshot');
    }

    class RebootCacheClusterMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.cache-cluster-id is required is aws-parameter('CacheClusterId');
        has CacheNodeIdsList $.cache-node-ids-to-reboot is required is aws-parameter('CacheNodeIdsToReboot');
    }

    class CacheParameterGroupNameMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.cache-parameter-group-name is required is aws-parameter('CacheParameterGroupName');
    }

    class CacheCluster:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.cache-subnet-group-name is required is aws-parameter('CacheSubnetGroupName');
        has Str $.preferred-availability-zone is required is aws-parameter('PreferredAvailabilityZone');
        has Str $.snapshot-window is required is aws-parameter('SnapshotWindow');
        has CacheParameterGroupStatus $.cache-parameter-group is required is aws-parameter('CacheParameterGroup');
        has SecurityGroupMembershipList $.security-groups is required is aws-parameter('SecurityGroups');
        has DateTime $.cache-cluster-create-time is required is aws-parameter('CacheClusterCreateTime');
        has CacheNodeList $.cache-nodes is required is aws-parameter('CacheNodes');
        has CacheSecurityGroupMembershipList $.cache-security-groups is required is aws-parameter('CacheSecurityGroups');
        has Str $.cache-cluster-status is required is aws-parameter('CacheClusterStatus');
        has NotificationConfiguration $.notification-configuration is required is aws-parameter('NotificationConfiguration');
        has Int $.num-cache-nodes is required is aws-parameter('NumCacheNodes');
        has Str $.engine is required is aws-parameter('Engine');
        has Endpoint $.configuration-endpoint is required is aws-parameter('ConfigurationEndpoint');
        has Str $.cache-cluster-id is required is aws-parameter('CacheClusterId');
        has Int $.snapshot-retention-limit is required is aws-parameter('SnapshotRetentionLimit');
        has Str $.replication-group-id is required is aws-parameter('ReplicationGroupId');
        has Str $.cache-node-type is required is aws-parameter('CacheNodeType');
        has Str $.client-download-landing-page is required is aws-parameter('ClientDownloadLandingPage');
        has Bool $.auto-minor-version-upgrade is required is aws-parameter('AutoMinorVersionUpgrade');
        has PendingModifiedValues $.pending-modified-values is required is aws-parameter('PendingModifiedValues');
        has Str $.preferred-maintenance-window is required is aws-parameter('PreferredMaintenanceWindow');
        has Str $.engine-version is required is aws-parameter('EngineVersion');
    }

    class CacheNodeTypeSpecificParameter:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.minimum-engine-version is required is aws-parameter('MinimumEngineVersion');
        has Str $.allowed-values is required is aws-parameter('AllowedValues');
        has Str $.source is required is aws-parameter('Source');
        has Str $.description is required is aws-parameter('Description');
        has Str $.data-type is required is aws-parameter('DataType');
        has Bool $.is-modifiable is required is aws-parameter('IsModifiable');
        has CacheNodeTypeSpecificValueList $.cache-node-type-specific-values is required is aws-parameter('CacheNodeTypeSpecificValues');
        has Str $.parameter-name is required is aws-parameter('ParameterName');
    }

    class DescribeCacheParametersMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.source is aws-parameter('Source');
        has Str $.cache-parameter-group-name is required is aws-parameter('CacheParameterGroupName');
        has Str $.marker is aws-parameter('Marker');
        has Int $.max-records is aws-parameter('MaxRecords');
    }

    class DescribeCacheSubnetGroupsMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.cache-subnet-group-name is required is aws-parameter('CacheSubnetGroupName');
        has Str $.marker is required is aws-parameter('Marker');
        has Int $.max-records is required is aws-parameter('MaxRecords');
    }

    class InsufficientCacheClusterCapacityFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class InvalidVPCNetworkStateFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    subset SnapshotList of List[Snapshot];

    class Snapshot:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.cache-subnet-group-name is required is aws-parameter('CacheSubnetGroupName');
        has Str $.preferred-availability-zone is required is aws-parameter('PreferredAvailabilityZone');
        has Str $.snapshot-window is required is aws-parameter('SnapshotWindow');
        has Str $.vpc-id is required is aws-parameter('VpcId');
        has DateTime $.cache-cluster-create-time is required is aws-parameter('CacheClusterCreateTime');
        has Str $.topic-arn is required is aws-parameter('TopicArn');
        has Str $.cache-parameter-group-name is required is aws-parameter('CacheParameterGroupName');
        has Int $.num-cache-nodes is required is aws-parameter('NumCacheNodes');
        has Str $.engine is required is aws-parameter('Engine');
        has Str $.cache-cluster-id is required is aws-parameter('CacheClusterId');
        has Str $.snapshot-name is required is aws-parameter('SnapshotName');
        has Int $.snapshot-retention-limit is required is aws-parameter('SnapshotRetentionLimit');
        has Str $.cache-node-type is required is aws-parameter('CacheNodeType');
        has Str $.snapshot-source is required is aws-parameter('SnapshotSource');
        has Bool $.auto-minor-version-upgrade is required is aws-parameter('AutoMinorVersionUpgrade');
        has Int $.port is required is aws-parameter('Port');
        has Str $.preferred-maintenance-window is required is aws-parameter('PreferredMaintenanceWindow');
        has Str $.engine-version is required is aws-parameter('EngineVersion');
        has NodeSnapshotList $.node-snapshots is required is aws-parameter('NodeSnapshots');
        has Str $.snapshot-status is required is aws-parameter('SnapshotStatus');
    }

    class ResetCacheParameterGroupMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has ParameterNameValueList $.parameter-name-values is required is aws-parameter('ParameterNameValues');
        has Bool $.reset-all-parameters is aws-parameter('ResetAllParameters');
        has Str $.cache-parameter-group-name is required is aws-parameter('CacheParameterGroupName');
    }

    class ReservedCacheNodeMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has ReservedCacheNodeList $.reserved-cache-nodes is required is aws-parameter('ReservedCacheNodes');
        has Str $.marker is required is aws-parameter('Marker');
    }

    subset RecurringChargeList of List[RecurringCharge];

    class CacheParameterGroupAlreadyExistsFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    subset AvailabilityZonesList of List[Str];

    class EngineDefaults:ver<2014-09-30.0> does AWS::SDK::Shape {
        has CacheNodeTypeSpecificParametersList $.cache-node-type-specific-parameters is required is aws-parameter('CacheNodeTypeSpecificParameters');
        has Str $.cache-parameter-group-family is required is aws-parameter('CacheParameterGroupFamily');
        has ParametersList $.parameters is required is aws-parameter('Parameters');
        has Str $.marker is required is aws-parameter('Marker');
    }

    class Subnet:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.subnet-identifier is required is aws-parameter('SubnetIdentifier');
        has AvailabilityZone $.subnet-availability-zone is required is aws-parameter('SubnetAvailabilityZone');
    }

    class ReplicationGroupNotFoundFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class ReplicationGroup:ver<2014-09-30.0> does AWS::SDK::Shape {
        has NodeGroupList $.node-groups is required is aws-parameter('NodeGroups');
        has Str $.description is required is aws-parameter('Description');
        has Str $.automatic-failover is required is aws-parameter('AutomaticFailover');
        has ClusterIdList $.member-clusters is required is aws-parameter('MemberClusters');
        has Str $.snapshotting-cluster-id is required is aws-parameter('SnapshottingClusterId');
        has Str $.status is required is aws-parameter('Status');
        has Str $.replication-group-id is required is aws-parameter('ReplicationGroupId');
        has ReplicationGroupPendingModifiedValues $.pending-modified-values is required is aws-parameter('PendingModifiedValues');
    }

    class DeleteCacheSubnetGroupMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.cache-subnet-group-name is required is aws-parameter('CacheSubnetGroupName');
    }

    class Event:ver<2014-09-30.0> does AWS::SDK::Shape {
        has DateTime $.date is required is aws-parameter('Date');
        has Str $.source-type is required is aws-parameter('SourceType');
        has Str $.source-identifier is required is aws-parameter('SourceIdentifier');
        has Str $.message is required is aws-parameter('Message');
    }

    class ModifyCacheSubnetGroupResult:ver<2014-09-30.0> does AWS::SDK::Shape {
        has CacheSubnetGroup $.cache-subnet-group is required is aws-parameter('CacheSubnetGroup');
    }

    class SubnetInUse:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class ModifyCacheSubnetGroupMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.cache-subnet-group-name is required is aws-parameter('CacheSubnetGroupName');
        has Str $.cache-subnet-group-description is aws-parameter('CacheSubnetGroupDescription');
        has SubnetIdentifierList $.subnet-ids is aws-parameter('SubnetIds');
    }

    subset CacheNodeIdsList of List[Str];

    class CacheSubnetGroupMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has CacheSubnetGroups $.cache-subnet-groups is required is aws-parameter('CacheSubnetGroups');
        has Str $.marker is required is aws-parameter('Marker');
    }

    subset CacheSubnetGroups of List[CacheSubnetGroup];

    class DeleteReplicationGroupMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Bool $.retain-primary-cluster is aws-parameter('RetainPrimaryCluster');
        has Str $.final-snapshot-identifier is aws-parameter('FinalSnapshotIdentifier');
        has Str $.replication-group-id is required is aws-parameter('ReplicationGroupId');
    }

    class CacheSecurityGroupMembership:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.cache-security-group-name is required is aws-parameter('CacheSecurityGroupName');
        has Str $.status is required is aws-parameter('Status');
    }

    class CacheParameterGroupStatus:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.parameter-apply-status is required is aws-parameter('ParameterApplyStatus');
        has Str $.cache-parameter-group-name is required is aws-parameter('CacheParameterGroupName');
        has CacheNodeIdsList $.cache-node-ids-to-reboot is required is aws-parameter('CacheNodeIdsToReboot');
    }

    class EventsMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has EventList $.events is required is aws-parameter('Events');
        has Str $.marker is required is aws-parameter('Marker');
    }

    class InvalidParameterValueException:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.message is required is aws-parameter('message');
    }

    class ReplicationGroupPendingModifiedValues:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.primary-cluster-id is required is aws-parameter('PrimaryClusterId');
        has Str $.automatic-failover-status is required is aws-parameter('AutomaticFailoverStatus');
    }

    subset PreferredAvailabilityZoneList of List[Str];

    subset ClusterIdList of List[Str];

    class DescribeEngineDefaultParametersMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.cache-parameter-group-family is required is aws-parameter('CacheParameterGroupFamily');
        has Str $.marker is aws-parameter('Marker');
        has Int $.max-records is aws-parameter('MaxRecords');
    }

    class DescribeReservedCacheNodesMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.offering-type is required is aws-parameter('OfferingType');
        has Str $.product-description is required is aws-parameter('ProductDescription');
        has Str $.duration is required is aws-parameter('Duration');
        has Str $.reserved-cache-nodes-offering-id is required is aws-parameter('ReservedCacheNodesOfferingId');
        has Str $.cache-node-type is required is aws-parameter('CacheNodeType');
        has Str $.reserved-cache-node-id is required is aws-parameter('ReservedCacheNodeId');
        has Str $.marker is required is aws-parameter('Marker');
        has Int $.max-records is required is aws-parameter('MaxRecords');
    }

    class ReservedCacheNode:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.offering-type is required is aws-parameter('OfferingType');
        has Str $.product-description is required is aws-parameter('ProductDescription');
        has Int $.cache-node-count is required is aws-parameter('CacheNodeCount');
        has Int $.duration is required is aws-parameter('Duration');
        has Str $.reserved-cache-nodes-offering-id is required is aws-parameter('ReservedCacheNodesOfferingId');
        has RecurringChargeList $.recurring-charges is required is aws-parameter('RecurringCharges');
        has Num $.usage-price is required is aws-parameter('UsagePrice');
        has Str $.state is required is aws-parameter('State');
        has Num $.fixed-price is required is aws-parameter('FixedPrice');
        has DateTime $.start-time is required is aws-parameter('StartTime');
        has Str $.cache-node-type is required is aws-parameter('CacheNodeType');
        has Str $.reserved-cache-node-id is required is aws-parameter('ReservedCacheNodeId');
    }

    subset ReplicationGroupList of List[ReplicationGroup];

    class NodeGroupMember:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.preferred-availability-zone is required is aws-parameter('PreferredAvailabilityZone');
        has Endpoint $.read-endpoint is required is aws-parameter('ReadEndpoint');
        has Str $.cache-node-id is required is aws-parameter('CacheNodeId');
        has Str $.current-role is required is aws-parameter('CurrentRole');
        has Str $.cache-cluster-id is required is aws-parameter('CacheClusterId');
    }

    class CacheSecurityGroupNotFoundFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class CacheParameterGroupNotFoundFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class CacheParameterGroupDetails:ver<2014-09-30.0> does AWS::SDK::Shape {
        has CacheNodeTypeSpecificParametersList $.cache-node-type-specific-parameters is required is aws-parameter('CacheNodeTypeSpecificParameters');
        has ParametersList $.parameters is required is aws-parameter('Parameters');
        has Str $.marker is required is aws-parameter('Marker');
    }

    class CacheSubnetQuotaExceededFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class CreateCacheClusterMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has SecurityGroupIdsList $.security-group-ids is aws-parameter('SecurityGroupIds');
        has Str $.cache-subnet-group-name is aws-parameter('CacheSubnetGroupName');
        has Str $.preferred-availability-zone is aws-parameter('PreferredAvailabilityZone');
        has Str $.snapshot-window is aws-parameter('SnapshotWindow');
        has Str $.notification-topic-arn is aws-parameter('NotificationTopicArn');
        has SnapshotArnsList $.snapshot-arns is aws-parameter('SnapshotArns');
        has PreferredAvailabilityZoneList $.preferred-availability-zones is aws-parameter('PreferredAvailabilityZones');
        has Str $.snapshot-name is aws-parameter('SnapshotName');
        has CacheSecurityGroupNameList $.cache-security-group-names is aws-parameter('CacheSecurityGroupNames');
        has Str $.cache-parameter-group-name is aws-parameter('CacheParameterGroupName');
        has Str $.engine is aws-parameter('Engine');
        has Int $.num-cache-nodes is aws-parameter('NumCacheNodes');
        has Str $.cache-cluster-id is required is aws-parameter('CacheClusterId');
        has Int $.snapshot-retention-limit is aws-parameter('SnapshotRetentionLimit');
        has Str $.cache-node-type is aws-parameter('CacheNodeType');
        has Str $.az-mode is aws-parameter('AZMode');
        has Str $.replication-group-id is aws-parameter('ReplicationGroupId');
        has Bool $.auto-minor-version-upgrade is aws-parameter('AutoMinorVersionUpgrade');
        has Int $.port is aws-parameter('Port');
        has Str $.preferred-maintenance-window is aws-parameter('PreferredMaintenanceWindow');
        has Str $.engine-version is aws-parameter('EngineVersion');
    }

    class DeleteCacheClusterMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.cache-cluster-id is required is aws-parameter('CacheClusterId');
        has Str $.final-snapshot-identifier is aws-parameter('FinalSnapshotIdentifier');
    }

    class DescribeCacheEngineVersionsMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.cache-parameter-group-family is required is aws-parameter('CacheParameterGroupFamily');
        has Str $.engine is required is aws-parameter('Engine');
        has Bool $.default-only is required is aws-parameter('DefaultOnly');
        has Str $.marker is required is aws-parameter('Marker');
        has Str $.engine-version is required is aws-parameter('EngineVersion');
        has Int $.max-records is required is aws-parameter('MaxRecords');
    }

    class DescribeCacheSecurityGroupsMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.cache-security-group-name is required is aws-parameter('CacheSecurityGroupName');
        has Str $.marker is required is aws-parameter('Marker');
        has Int $.max-records is required is aws-parameter('MaxRecords');
    }

    class ModifyCacheParameterGroupMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has ParameterNameValueList $.parameter-name-values is required is aws-parameter('ParameterNameValues');
        has Str $.cache-parameter-group-name is required is aws-parameter('CacheParameterGroupName');
    }

    class PurchaseReservedCacheNodesOfferingMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Int $.cache-node-count is aws-parameter('CacheNodeCount');
        has Str $.reserved-cache-nodes-offering-id is required is aws-parameter('ReservedCacheNodesOfferingId');
        has Str $.reserved-cache-node-id is aws-parameter('ReservedCacheNodeId');
    }

    class RebootCacheClusterResult:ver<2014-09-30.0> does AWS::SDK::Shape {
        has CacheCluster $.cache-cluster is required is aws-parameter('CacheCluster');
    }

    class CacheClusterNotFoundFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class CacheClusterMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has CacheClusterList $.cache-clusters is required is aws-parameter('CacheClusters');
        has Str $.marker is required is aws-parameter('Marker');
    }

    class AuthorizationNotFoundFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class CacheSubnetGroupInUse:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class DeleteReplicationGroupResult:ver<2014-09-30.0> does AWS::SDK::Shape {
        has ReplicationGroup $.replication-group is required is aws-parameter('ReplicationGroup');
    }

    class CopySnapshotResult:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Snapshot $.snapshot is required is aws-parameter('Snapshot');
    }

    class NodeQuotaForCustomerExceededFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class NodeGroup:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Endpoint $.primary-endpoint is required is aws-parameter('PrimaryEndpoint');
        has Str $.status is required is aws-parameter('Status');
        has NodeGroupMemberList $.node-group-members is required is aws-parameter('NodeGroupMembers');
        has Str $.node-group-id is required is aws-parameter('NodeGroupId');
    }

    subset CacheSecurityGroupMembershipList of List[CacheSecurityGroupMembership];

    class CacheSecurityGroup:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.owner-id is required is aws-parameter('OwnerId');
        has Str $.description is required is aws-parameter('Description');
        has EC2SecurityGroupList $.ec2-security-groups is required is aws-parameter('EC2SecurityGroups');
        has Str $.cache-security-group-name is required is aws-parameter('CacheSecurityGroupName');
    }

    class AuthorizeCacheSecurityGroupIngressMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.ec2-security-group-name is required is aws-parameter('EC2SecurityGroupName');
        has Str $.cache-security-group-name is required is aws-parameter('CacheSecurityGroupName');
        has Str $.ec2-security-group-owner-id is required is aws-parameter('EC2SecurityGroupOwnerId');
    }

    class CreateCacheSubnetGroupMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.cache-subnet-group-name is required is aws-parameter('CacheSubnetGroupName');
        has Str $.cache-subnet-group-description is required is aws-parameter('CacheSubnetGroupDescription');
        has SubnetIdentifierList $.subnet-ids is required is aws-parameter('SubnetIds');
    }

    class DescribeCacheClustersMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Bool $.show-cache-node-info is required is aws-parameter('ShowCacheNodeInfo');
        has Str $.cache-cluster-id is required is aws-parameter('CacheClusterId');
        has Str $.marker is required is aws-parameter('Marker');
        has Int $.max-records is required is aws-parameter('MaxRecords');
    }

    class ReservedCacheNodesOfferingMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has ReservedCacheNodesOfferingList $.reserved-cache-nodes-offerings is required is aws-parameter('ReservedCacheNodesOfferings');
        has Str $.marker is required is aws-parameter('Marker');
    }

    class ReservedCacheNodeNotFoundFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class SnapshotQuotaExceededFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class CreateCacheSecurityGroupMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.description is required is aws-parameter('Description');
        has Str $.cache-security-group-name is required is aws-parameter('CacheSecurityGroupName');
    }

    class Endpoint:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.address is required is aws-parameter('Address');
        has Int $.port is required is aws-parameter('Port');
    }

    class ReservedCacheNodesOfferingNotFoundFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class CacheSecurityGroupMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has CacheSecurityGroups $.cache-security-groups is required is aws-parameter('CacheSecurityGroups');
        has Str $.marker is required is aws-parameter('Marker');
    }

    class CacheEngineVersionMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has CacheEngineVersionList $.cache-engine-versions is required is aws-parameter('CacheEngineVersions');
        has Str $.marker is required is aws-parameter('Marker');
    }

    class AvailabilityZone:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.name is required is aws-parameter('Name');
    }

    class DeleteSnapshotMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.snapshot-name is required is aws-parameter('SnapshotName');
    }

    subset EventList of List[Event];

    subset SecurityGroupMembershipList of List[SecurityGroupMembership];

    class RevokeCacheSecurityGroupIngressMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.ec2-security-group-name is required is aws-parameter('EC2SecurityGroupName');
        has Str $.cache-security-group-name is required is aws-parameter('CacheSecurityGroupName');
        has Str $.ec2-security-group-owner-id is required is aws-parameter('EC2SecurityGroupOwnerId');
    }

    class PendingModifiedValues:ver<2014-09-30.0> does AWS::SDK::Shape {
        has CacheNodeIdsList $.cache-node-ids-to-remove is required is aws-parameter('CacheNodeIdsToRemove');
        has Int $.num-cache-nodes is required is aws-parameter('NumCacheNodes');
        has Str $.engine-version is required is aws-parameter('EngineVersion');
    }

    class NodeQuotaForClusterExceededFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class CacheParameterGroupsMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has CacheParameterGroupList $.cache-parameter-groups is required is aws-parameter('CacheParameterGroups');
        has Str $.marker is required is aws-parameter('Marker');
    }

    subset CacheNodeTypeSpecificValueList of List[CacheNodeTypeSpecificValue];

    subset CacheNodeTypeSpecificParametersList of List[CacheNodeTypeSpecificParameter];

    class AuthorizeCacheSecurityGroupIngressResult:ver<2014-09-30.0> does AWS::SDK::Shape {
        has CacheSecurityGroup $.cache-security-group is required is aws-parameter('CacheSecurityGroup');
    }

    subset SecurityGroupIdsList of List[Str];

    class ParameterNameValue:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.parameter-value is required is aws-parameter('ParameterValue');
        has Str $.parameter-name is required is aws-parameter('ParameterName');
    }

    class Parameter:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.parameter-value is required is aws-parameter('ParameterValue');
        has Str $.minimum-engine-version is required is aws-parameter('MinimumEngineVersion');
        has Str $.allowed-values is required is aws-parameter('AllowedValues');
        has Str $.source is required is aws-parameter('Source');
        has Str $.description is required is aws-parameter('Description');
        has Str $.data-type is required is aws-parameter('DataType');
        has Bool $.is-modifiable is required is aws-parameter('IsModifiable');
        has Str $.parameter-name is required is aws-parameter('ParameterName');
    }

    subset NodeGroupList of List[NodeGroup];

    class ModifyCacheClusterMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has SecurityGroupIdsList $.security-group-ids is aws-parameter('SecurityGroupIds');
        has Str $.snapshot-window is aws-parameter('SnapshotWindow');
        has Str $.notification-topic-arn is aws-parameter('NotificationTopicArn');
        has PreferredAvailabilityZoneList $.new-availability-zones is aws-parameter('NewAvailabilityZones');
        has CacheNodeIdsList $.cache-node-ids-to-remove is aws-parameter('CacheNodeIdsToRemove');
        has Str $.cache-parameter-group-name is aws-parameter('CacheParameterGroupName');
        has CacheSecurityGroupNameList $.cache-security-group-names is aws-parameter('CacheSecurityGroupNames');
        has Int $.num-cache-nodes is aws-parameter('NumCacheNodes');
        has Str $.cache-cluster-id is required is aws-parameter('CacheClusterId');
        has Int $.snapshot-retention-limit is aws-parameter('SnapshotRetentionLimit');
        has Str $.az-mode is aws-parameter('AZMode');
        has Bool $.auto-minor-version-upgrade is aws-parameter('AutoMinorVersionUpgrade');
        has Str $.engine-version is aws-parameter('EngineVersion');
        has Str $.preferred-maintenance-window is aws-parameter('PreferredMaintenanceWindow');
        has Bool $.apply-immediately is aws-parameter('ApplyImmediately');
        has Str $.notification-topic-status is aws-parameter('NotificationTopicStatus');
    }

    class CreateReplicationGroupResult:ver<2014-09-30.0> does AWS::SDK::Shape {
        has ReplicationGroup $.replication-group is required is aws-parameter('ReplicationGroup');
    }

    class CreateCacheParameterGroupMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.description is required is aws-parameter('Description');
        has Str $.cache-parameter-group-family is required is aws-parameter('CacheParameterGroupFamily');
        has Str $.cache-parameter-group-name is required is aws-parameter('CacheParameterGroupName');
    }

    class DescribeEventsMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Int $.duration is required is aws-parameter('Duration');
        has DateTime $.end-time is required is aws-parameter('EndTime');
        has DateTime $.start-time is required is aws-parameter('StartTime');
        has Str $.source-type is required is aws-parameter('SourceType');
        has Str $.source-identifier is required is aws-parameter('SourceIdentifier');
        has Str $.marker is required is aws-parameter('Marker');
        has Int $.max-records is required is aws-parameter('MaxRecords');
    }

    class DescribeEngineDefaultParametersResult:ver<2014-09-30.0> does AWS::SDK::Shape {
        has EngineDefaults $.engine-defaults is required is aws-parameter('EngineDefaults');
    }

    class ReplicationGroupMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has ReplicationGroupList $.replication-groups is required is aws-parameter('ReplicationGroups');
        has Str $.marker is required is aws-parameter('Marker');
    }

    subset ParameterNameValueList of List[ParameterNameValue];

    class NodeSnapshot:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.cache-size is required is aws-parameter('CacheSize');
        has Str $.cache-node-id is required is aws-parameter('CacheNodeId');
        has DateTime $.cache-node-create-time is required is aws-parameter('CacheNodeCreateTime');
        has DateTime $.snapshot-create-time is required is aws-parameter('SnapshotCreateTime');
    }

    class CreateSnapshotMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.snapshot-name is required is aws-parameter('SnapshotName');
        has Str $.cache-cluster-id is required is aws-parameter('CacheClusterId');
    }

    class DescribeSnapshotsListMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has SnapshotList $.snapshots is required is aws-parameter('Snapshots');
        has Str $.marker is required is aws-parameter('Marker');
    }

    class InvalidReplicationGroupStateFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class ReplicationGroupAlreadyExistsFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    subset NodeSnapshotList of List[NodeSnapshot];

    class CacheParameterGroupQuotaExceededFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class CacheSubnetGroupNotFoundFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class CreateCacheSecurityGroupResult:ver<2014-09-30.0> does AWS::SDK::Shape {
        has CacheSecurityGroup $.cache-security-group is required is aws-parameter('CacheSecurityGroup');
    }

    subset SubnetIdentifierList of List[Str];

    class RecurringCharge:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Num $.recurring-charge-amount is required is aws-parameter('RecurringChargeAmount');
        has Str $.recurring-charge-frequency is required is aws-parameter('RecurringChargeFrequency');
    }

    subset CacheSecurityGroups of List[CacheSecurityGroup];

    class InvalidSubnet:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class ReservedCacheNodesOffering:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.offering-type is required is aws-parameter('OfferingType');
        has Str $.product-description is required is aws-parameter('ProductDescription');
        has Int $.duration is required is aws-parameter('Duration');
        has Str $.reserved-cache-nodes-offering-id is required is aws-parameter('ReservedCacheNodesOfferingId');
        has RecurringChargeList $.recurring-charges is required is aws-parameter('RecurringCharges');
        has Num $.usage-price is required is aws-parameter('UsagePrice');
        has Num $.fixed-price is required is aws-parameter('FixedPrice');
        has Str $.cache-node-type is required is aws-parameter('CacheNodeType');
    }

    class ReservedCacheNodeAlreadyExistsFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class DescribeReplicationGroupsMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.replication-group-id is required is aws-parameter('ReplicationGroupId');
        has Str $.marker is required is aws-parameter('Marker');
        has Int $.max-records is required is aws-parameter('MaxRecords');
    }

    class EC2SecurityGroup:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.ec2-security-group-name is required is aws-parameter('EC2SecurityGroupName');
        has Str $.ec2-security-group-owner-id is required is aws-parameter('EC2SecurityGroupOwnerId');
        has Str $.status is required is aws-parameter('Status');
    }

    class InvalidParameterCombinationException:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.message is required is aws-parameter('message');
    }

    class RevokeCacheSecurityGroupIngressResult:ver<2014-09-30.0> does AWS::SDK::Shape {
        has CacheSecurityGroup $.cache-security-group is required is aws-parameter('CacheSecurityGroup');
    }

    class ModifyCacheClusterResult:ver<2014-09-30.0> does AWS::SDK::Shape {
        has CacheCluster $.cache-cluster is required is aws-parameter('CacheCluster');
    }

    class SnapshotFeatureNotSupportedFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class SnapshotAlreadyExistsFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    class DescribeReservedCacheNodesOfferingsMessage:ver<2014-09-30.0> does AWS::SDK::Shape {
        has Str $.offering-type is required is aws-parameter('OfferingType');
        has Str $.product-description is required is aws-parameter('ProductDescription');
        has Str $.duration is required is aws-parameter('Duration');
        has Str $.reserved-cache-nodes-offering-id is required is aws-parameter('ReservedCacheNodesOfferingId');
        has Str $.cache-node-type is required is aws-parameter('CacheNodeType');
        has Str $.marker is required is aws-parameter('Marker');
        has Int $.max-records is required is aws-parameter('MaxRecords');
    }

    subset SubnetList of List[Subnet];

    class CacheSecurityGroupAlreadyExistsFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    subset CacheParameterGroupList of List[CacheParameterGroup];

    subset CacheNodeList of List[CacheNode];

    class InvalidCacheClusterStateFault:ver<2014-09-30.0> does AWS::SDK::Shape {
    }

    method delete-replication-group(
        Bool :$retain-primary-cluster,
        Str :$final-snapshot-identifier,
        Str :$replication-group-id!
    ) returns DeleteReplicationGroupResult {
        my $request-input = DeleteReplicationGroupMessage.new(
            :$retain-primary-cluster,
            :$final-snapshot-identifier,
            :$replication-group-id
        );
;
        self.perform-operation(
            :api-call<DeleteReplicationGroup>,
            :return-type(DeleteReplicationGroupResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method delete-cache-security-group(
        Str :$cache-security-group-name!
    ) {
        my $request-input = DeleteCacheSecurityGroupMessage.new(
            :$cache-security-group-name
        );
;
        self.perform-operation(
            :api-call<DeleteCacheSecurityGroup>,
            :return-type(Nil),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method create-replication-group(
        SecurityGroupIdsList :$security-group-ids,
        Str :$cache-subnet-group-name,
        Str :$snapshot-window,
        Str :$notification-topic-arn,
        AvailabilityZonesList :$preferred-cache-cluster-azs,
        Bool :$automatic-failover-enabled,
        Str :$primary-cluster-id,
        SnapshotArnsList :$snapshot-arns,
        Str :$replication-group-description!,
        Str :$snapshot-name,
        CacheSecurityGroupNameList :$cache-security-group-names,
        Str :$cache-parameter-group-name,
        Str :$engine,
        Int :$snapshot-retention-limit,
        Str :$cache-node-type,
        Str :$replication-group-id!,
        Bool :$auto-minor-version-upgrade,
        Int :$port,
        Str :$preferred-maintenance-window,
        Str :$engine-version,
        Int :$num-cache-clusters
    ) returns CreateReplicationGroupResult {
        my $request-input = CreateReplicationGroupMessage.new(
            :$security-group-ids,
            :$cache-subnet-group-name,
            :$snapshot-window,
            :$notification-topic-arn,
            :$preferred-cache-cluster-azs,
            :$automatic-failover-enabled,
            :$primary-cluster-id,
            :$snapshot-arns,
            :$replication-group-description,
            :$snapshot-name,
            :$cache-security-group-names,
            :$cache-parameter-group-name,
            :$engine,
            :$snapshot-retention-limit,
            :$cache-node-type,
            :$replication-group-id,
            :$auto-minor-version-upgrade,
            :$port,
            :$preferred-maintenance-window,
            :$engine-version,
            :$num-cache-clusters
        );
;
        self.perform-operation(
            :api-call<CreateReplicationGroup>,
            :return-type(CreateReplicationGroupResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method create-cache-subnet-group(
        Str :$cache-subnet-group-name!,
        Str :$cache-subnet-group-description!,
        SubnetIdentifierList :$subnet-ids!
    ) returns CreateCacheSubnetGroupResult {
        my $request-input = CreateCacheSubnetGroupMessage.new(
            :$cache-subnet-group-name,
            :$cache-subnet-group-description,
            :$subnet-ids
        );
;
        self.perform-operation(
            :api-call<CreateCacheSubnetGroup>,
            :return-type(CreateCacheSubnetGroupResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method create-cache-parameter-group(
        Str :$description!,
        Str :$cache-parameter-group-family!,
        Str :$cache-parameter-group-name!
    ) returns CreateCacheParameterGroupResult {
        my $request-input = CreateCacheParameterGroupMessage.new(
            :$description,
            :$cache-parameter-group-family,
            :$cache-parameter-group-name
        );
;
        self.perform-operation(
            :api-call<CreateCacheParameterGroup>,
            :return-type(CreateCacheParameterGroupResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method reset-cache-parameter-group(
        ParameterNameValueList :$parameter-name-values!,
        Bool :$reset-all-parameters,
        Str :$cache-parameter-group-name!
    ) returns CacheParameterGroupNameMessage {
        my $request-input = ResetCacheParameterGroupMessage.new(
            :$parameter-name-values,
            :$reset-all-parameters,
            :$cache-parameter-group-name
        );
;
        self.perform-operation(
            :api-call<ResetCacheParameterGroup>,
            :return-type(CacheParameterGroupNameMessage),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method describe-cache-engine-versions(
        Str :$cache-parameter-group-family!,
        Str :$engine!,
        Bool :$default-only!,
        Str :$marker!,
        Str :$engine-version!,
        Int :$max-records!
    ) returns CacheEngineVersionMessage {
        my $request-input = DescribeCacheEngineVersionsMessage.new(
            :$cache-parameter-group-family,
            :$engine,
            :$default-only,
            :$marker,
            :$engine-version,
            :$max-records
        );
;
        self.perform-operation(
            :api-call<DescribeCacheEngineVersions>,
            :return-type(CacheEngineVersionMessage),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method modify-cache-cluster(
        SecurityGroupIdsList :$security-group-ids,
        Str :$snapshot-window,
        Str :$notification-topic-arn,
        PreferredAvailabilityZoneList :$new-availability-zones,
        CacheNodeIdsList :$cache-node-ids-to-remove,
        Str :$cache-parameter-group-name,
        CacheSecurityGroupNameList :$cache-security-group-names,
        Int :$num-cache-nodes,
        Str :$cache-cluster-id!,
        Int :$snapshot-retention-limit,
        Str :$az-mode,
        Bool :$auto-minor-version-upgrade,
        Str :$engine-version,
        Str :$preferred-maintenance-window,
        Bool :$apply-immediately,
        Str :$notification-topic-status
    ) returns ModifyCacheClusterResult {
        my $request-input = ModifyCacheClusterMessage.new(
            :$security-group-ids,
            :$snapshot-window,
            :$notification-topic-arn,
            :$new-availability-zones,
            :$cache-node-ids-to-remove,
            :$cache-parameter-group-name,
            :$cache-security-group-names,
            :$num-cache-nodes,
            :$cache-cluster-id,
            :$snapshot-retention-limit,
            :$az-mode,
            :$auto-minor-version-upgrade,
            :$engine-version,
            :$preferred-maintenance-window,
            :$apply-immediately,
            :$notification-topic-status
        );
;
        self.perform-operation(
            :api-call<ModifyCacheCluster>,
            :return-type(ModifyCacheClusterResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method describe-events(
        Int :$duration!,
        DateTime :$end-time!,
        DateTime :$start-time!,
        Str :$source-type!,
        Str :$source-identifier!,
        Str :$marker!,
        Int :$max-records!
    ) returns EventsMessage {
        my $request-input = DescribeEventsMessage.new(
            :$duration,
            :$end-time,
            :$start-time,
            :$source-type,
            :$source-identifier,
            :$marker,
            :$max-records
        );
;
        self.perform-operation(
            :api-call<DescribeEvents>,
            :return-type(EventsMessage),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method delete-cache-parameter-group(
        Str :$cache-parameter-group-name!
    ) {
        my $request-input = DeleteCacheParameterGroupMessage.new(
            :$cache-parameter-group-name
        );
;
        self.perform-operation(
            :api-call<DeleteCacheParameterGroup>,
            :return-type(Nil),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method delete-cache-cluster(
        Str :$cache-cluster-id!,
        Str :$final-snapshot-identifier
    ) returns DeleteCacheClusterResult {
        my $request-input = DeleteCacheClusterMessage.new(
            :$cache-cluster-id,
            :$final-snapshot-identifier
        );
;
        self.perform-operation(
            :api-call<DeleteCacheCluster>,
            :return-type(DeleteCacheClusterResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method create-snapshot(
        Str :$snapshot-name!,
        Str :$cache-cluster-id!
    ) returns CreateSnapshotResult {
        my $request-input = CreateSnapshotMessage.new(
            :$snapshot-name,
            :$cache-cluster-id
        );
;
        self.perform-operation(
            :api-call<CreateSnapshot>,
            :return-type(CreateSnapshotResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method create-cache-security-group(
        Str :$description!,
        Str :$cache-security-group-name!
    ) returns CreateCacheSecurityGroupResult {
        my $request-input = CreateCacheSecurityGroupMessage.new(
            :$description,
            :$cache-security-group-name
        );
;
        self.perform-operation(
            :api-call<CreateCacheSecurityGroup>,
            :return-type(CreateCacheSecurityGroupResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method revoke-cache-security-group-ingress(
        Str :$ec2-security-group-name!,
        Str :$cache-security-group-name!,
        Str :$ec2-security-group-owner-id!
    ) returns RevokeCacheSecurityGroupIngressResult {
        my $request-input = RevokeCacheSecurityGroupIngressMessage.new(
            :$ec2-security-group-name,
            :$cache-security-group-name,
            :$ec2-security-group-owner-id
        );
;
        self.perform-operation(
            :api-call<RevokeCacheSecurityGroupIngress>,
            :return-type(RevokeCacheSecurityGroupIngressResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method describe-cache-parameters(
        Str :$source,
        Str :$cache-parameter-group-name!,
        Str :$marker,
        Int :$max-records
    ) returns CacheParameterGroupDetails {
        my $request-input = DescribeCacheParametersMessage.new(
            :$source,
            :$cache-parameter-group-name,
            :$marker,
            :$max-records
        );
;
        self.perform-operation(
            :api-call<DescribeCacheParameters>,
            :return-type(CacheParameterGroupDetails),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method describe-cache-clusters(
        Bool :$show-cache-node-info!,
        Str :$cache-cluster-id!,
        Str :$marker!,
        Int :$max-records!
    ) returns CacheClusterMessage {
        my $request-input = DescribeCacheClustersMessage.new(
            :$show-cache-node-info,
            :$cache-cluster-id,
            :$marker,
            :$max-records
        );
;
        self.perform-operation(
            :api-call<DescribeCacheClusters>,
            :return-type(CacheClusterMessage),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method delete-snapshot(
        Str :$snapshot-name!
    ) returns DeleteSnapshotResult {
        my $request-input = DeleteSnapshotMessage.new(
            :$snapshot-name
        );
;
        self.perform-operation(
            :api-call<DeleteSnapshot>,
            :return-type(DeleteSnapshotResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method delete-cache-subnet-group(
        Str :$cache-subnet-group-name!
    ) {
        my $request-input = DeleteCacheSubnetGroupMessage.new(
            :$cache-subnet-group-name
        );
;
        self.perform-operation(
            :api-call<DeleteCacheSubnetGroup>,
            :return-type(Nil),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method create-cache-cluster(
        SecurityGroupIdsList :$security-group-ids,
        Str :$cache-subnet-group-name,
        Str :$preferred-availability-zone,
        Str :$snapshot-window,
        Str :$notification-topic-arn,
        SnapshotArnsList :$snapshot-arns,
        PreferredAvailabilityZoneList :$preferred-availability-zones,
        Str :$snapshot-name,
        CacheSecurityGroupNameList :$cache-security-group-names,
        Str :$cache-parameter-group-name,
        Str :$engine,
        Int :$num-cache-nodes,
        Str :$cache-cluster-id!,
        Int :$snapshot-retention-limit,
        Str :$cache-node-type,
        Str :$az-mode,
        Str :$replication-group-id,
        Bool :$auto-minor-version-upgrade,
        Int :$port,
        Str :$preferred-maintenance-window,
        Str :$engine-version
    ) returns CreateCacheClusterResult {
        my $request-input = CreateCacheClusterMessage.new(
            :$security-group-ids,
            :$cache-subnet-group-name,
            :$preferred-availability-zone,
            :$snapshot-window,
            :$notification-topic-arn,
            :$snapshot-arns,
            :$preferred-availability-zones,
            :$snapshot-name,
            :$cache-security-group-names,
            :$cache-parameter-group-name,
            :$engine,
            :$num-cache-nodes,
            :$cache-cluster-id,
            :$snapshot-retention-limit,
            :$cache-node-type,
            :$az-mode,
            :$replication-group-id,
            :$auto-minor-version-upgrade,
            :$port,
            :$preferred-maintenance-window,
            :$engine-version
        );
;
        self.perform-operation(
            :api-call<CreateCacheCluster>,
            :return-type(CreateCacheClusterResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method reboot-cache-cluster(
        Str :$cache-cluster-id!,
        CacheNodeIdsList :$cache-node-ids-to-reboot!
    ) returns RebootCacheClusterResult {
        my $request-input = RebootCacheClusterMessage.new(
            :$cache-cluster-id,
            :$cache-node-ids-to-reboot
        );
;
        self.perform-operation(
            :api-call<RebootCacheCluster>,
            :return-type(RebootCacheClusterResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method modify-cache-subnet-group(
        Str :$cache-subnet-group-name!,
        Str :$cache-subnet-group-description,
        SubnetIdentifierList :$subnet-ids
    ) returns ModifyCacheSubnetGroupResult {
        my $request-input = ModifyCacheSubnetGroupMessage.new(
            :$cache-subnet-group-name,
            :$cache-subnet-group-description,
            :$subnet-ids
        );
;
        self.perform-operation(
            :api-call<ModifyCacheSubnetGroup>,
            :return-type(ModifyCacheSubnetGroupResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method modify-cache-parameter-group(
        ParameterNameValueList :$parameter-name-values!,
        Str :$cache-parameter-group-name!
    ) returns CacheParameterGroupNameMessage {
        my $request-input = ModifyCacheParameterGroupMessage.new(
            :$parameter-name-values,
            :$cache-parameter-group-name
        );
;
        self.perform-operation(
            :api-call<ModifyCacheParameterGroup>,
            :return-type(CacheParameterGroupNameMessage),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method describe-snapshots(
        Str :$snapshot-name!,
        Str :$cache-cluster-id!,
        Str :$snapshot-source!,
        Str :$marker!,
        Int :$max-records!
    ) returns DescribeSnapshotsListMessage {
        my $request-input = DescribeSnapshotsMessage.new(
            :$snapshot-name,
            :$cache-cluster-id,
            :$snapshot-source,
            :$marker,
            :$max-records
        );
;
        self.perform-operation(
            :api-call<DescribeSnapshots>,
            :return-type(DescribeSnapshotsListMessage),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method describe-reserved-cache-nodes(
        Str :$offering-type!,
        Str :$product-description!,
        Str :$duration!,
        Str :$reserved-cache-nodes-offering-id!,
        Str :$cache-node-type!,
        Str :$reserved-cache-node-id!,
        Str :$marker!,
        Int :$max-records!
    ) returns ReservedCacheNodeMessage {
        my $request-input = DescribeReservedCacheNodesMessage.new(
            :$offering-type,
            :$product-description,
            :$duration,
            :$reserved-cache-nodes-offering-id,
            :$cache-node-type,
            :$reserved-cache-node-id,
            :$marker,
            :$max-records
        );
;
        self.perform-operation(
            :api-call<DescribeReservedCacheNodes>,
            :return-type(ReservedCacheNodeMessage),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method describe-engine-default-parameters(
        Str :$cache-parameter-group-family!,
        Str :$marker,
        Int :$max-records
    ) returns DescribeEngineDefaultParametersResult {
        my $request-input = DescribeEngineDefaultParametersMessage.new(
            :$cache-parameter-group-family,
            :$marker,
            :$max-records
        );
;
        self.perform-operation(
            :api-call<DescribeEngineDefaultParameters>,
            :return-type(DescribeEngineDefaultParametersResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method authorize-cache-security-group-ingress(
        Str :$ec2-security-group-name!,
        Str :$cache-security-group-name!,
        Str :$ec2-security-group-owner-id!
    ) returns AuthorizeCacheSecurityGroupIngressResult {
        my $request-input = AuthorizeCacheSecurityGroupIngressMessage.new(
            :$ec2-security-group-name,
            :$cache-security-group-name,
            :$ec2-security-group-owner-id
        );
;
        self.perform-operation(
            :api-call<AuthorizeCacheSecurityGroupIngress>,
            :return-type(AuthorizeCacheSecurityGroupIngressResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method describe-replication-groups(
        Str :$replication-group-id!,
        Str :$marker!,
        Int :$max-records!
    ) returns ReplicationGroupMessage {
        my $request-input = DescribeReplicationGroupsMessage.new(
            :$replication-group-id,
            :$marker,
            :$max-records
        );
;
        self.perform-operation(
            :api-call<DescribeReplicationGroups>,
            :return-type(ReplicationGroupMessage),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method describe-cache-parameter-groups(
        Str :$cache-parameter-group-name!,
        Str :$marker!,
        Int :$max-records!
    ) returns CacheParameterGroupsMessage {
        my $request-input = DescribeCacheParameterGroupsMessage.new(
            :$cache-parameter-group-name,
            :$marker,
            :$max-records
        );
;
        self.perform-operation(
            :api-call<DescribeCacheParameterGroups>,
            :return-type(CacheParameterGroupsMessage),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method copy-snapshot(
        Str :$target-snapshot-name!,
        Str :$source-snapshot-name!
    ) returns CopySnapshotResult {
        my $request-input = CopySnapshotMessage.new(
            :$target-snapshot-name,
            :$source-snapshot-name
        );
;
        self.perform-operation(
            :api-call<CopySnapshot>,
            :return-type(CopySnapshotResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method purchase-reserved-cache-nodes-offering(
        Int :$cache-node-count,
        Str :$reserved-cache-nodes-offering-id!,
        Str :$reserved-cache-node-id
    ) returns PurchaseReservedCacheNodesOfferingResult {
        my $request-input = PurchaseReservedCacheNodesOfferingMessage.new(
            :$cache-node-count,
            :$reserved-cache-nodes-offering-id,
            :$reserved-cache-node-id
        );
;
        self.perform-operation(
            :api-call<PurchaseReservedCacheNodesOffering>,
            :return-type(PurchaseReservedCacheNodesOfferingResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method describe-cache-subnet-groups(
        Str :$cache-subnet-group-name!,
        Str :$marker!,
        Int :$max-records!
    ) returns CacheSubnetGroupMessage {
        my $request-input = DescribeCacheSubnetGroupsMessage.new(
            :$cache-subnet-group-name,
            :$marker,
            :$max-records
        );
;
        self.perform-operation(
            :api-call<DescribeCacheSubnetGroups>,
            :return-type(CacheSubnetGroupMessage),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method describe-cache-security-groups(
        Str :$cache-security-group-name!,
        Str :$marker!,
        Int :$max-records!
    ) returns CacheSecurityGroupMessage {
        my $request-input = DescribeCacheSecurityGroupsMessage.new(
            :$cache-security-group-name,
            :$marker,
            :$max-records
        );
;
        self.perform-operation(
            :api-call<DescribeCacheSecurityGroups>,
            :return-type(CacheSecurityGroupMessage),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method modify-replication-group(
        SecurityGroupIdsList :$security-group-ids,
        Str :$snapshot-window,
        Str :$notification-topic-arn,
        Bool :$automatic-failover-enabled,
        Str :$primary-cluster-id,
        Str :$replication-group-description,
        Str :$cache-parameter-group-name,
        CacheSecurityGroupNameList :$cache-security-group-names,
        Int :$snapshot-retention-limit,
        Str :$snapshotting-cluster-id,
        Str :$replication-group-id!,
        Bool :$auto-minor-version-upgrade,
        Str :$engine-version,
        Str :$preferred-maintenance-window,
        Bool :$apply-immediately,
        Str :$notification-topic-status
    ) returns ModifyReplicationGroupResult {
        my $request-input = ModifyReplicationGroupMessage.new(
            :$security-group-ids,
            :$snapshot-window,
            :$notification-topic-arn,
            :$automatic-failover-enabled,
            :$primary-cluster-id,
            :$replication-group-description,
            :$cache-parameter-group-name,
            :$cache-security-group-names,
            :$snapshot-retention-limit,
            :$snapshotting-cluster-id,
            :$replication-group-id,
            :$auto-minor-version-upgrade,
            :$engine-version,
            :$preferred-maintenance-window,
            :$apply-immediately,
            :$notification-topic-status
        );
;
        self.perform-operation(
            :api-call<ModifyReplicationGroup>,
            :return-type(ModifyReplicationGroupResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method describe-reserved-cache-nodes-offerings(
        Str :$offering-type!,
        Str :$product-description!,
        Str :$duration!,
        Str :$reserved-cache-nodes-offering-id!,
        Str :$cache-node-type!,
        Str :$marker!,
        Int :$max-records!
    ) returns ReservedCacheNodesOfferingMessage {
        my $request-input = DescribeReservedCacheNodesOfferingsMessage.new(
            :$offering-type,
            :$product-description,
            :$duration,
            :$reserved-cache-nodes-offering-id,
            :$cache-node-type,
            :$marker,
            :$max-records
        );
;
        self.perform-operation(
            :api-call<DescribeReservedCacheNodesOfferings>,
            :return-type(ReservedCacheNodesOfferingMessage),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

}

