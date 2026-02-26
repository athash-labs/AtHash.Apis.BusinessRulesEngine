using System;

public class RuleCombinationEntity
{
    public int Id { get; set; }
    public string Name { get; set; }
    public int OrderSequence { get; set; }
    public int CombinerTypeId { get; set; }
    public int PreviousRuleId { get; set; }
    public int NextRuleId { get; set; }
    public bool IsEnabled { get; set; }
}
