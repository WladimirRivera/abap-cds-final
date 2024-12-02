define hierarchy ZCDS_FLIGHT_HIERA_437
  as parent child hierarchy(
    source ZCDS_MOD_FLIGHT_HIER_437
    child to parent association _Agency
    start where
      AgencyId is initial
    siblings order by
      AgencyId
    multiple parents allowed
    orphans ignore
    cycles breakup
  )
{
  AgencyId,
  CustomerId,
  $node.node_id               as NodeId,
  $node.hierarchy_is_cycle    as HierCy,
  $node.hierarchy_is_orphan   as HierOrp,
  $node.hierarchy_level       as hierLev,
  $node.hierarchy_parent_rank as HierParent,
  $node.hierarchy_rank        as HierRank,
  $node.hierarchy_tree_size   as HierTree
}
