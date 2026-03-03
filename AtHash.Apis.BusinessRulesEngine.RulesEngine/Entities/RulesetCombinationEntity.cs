using System;

public class RulesetCombinationEntity
{
    public int Id { get; set; }
    public string? Name { get; set; }
    public int OrderSequence { get; set; }
    public int CombinerTypeId { get; set; }
    public int PreviousRulesetId { get; set; }
    public int NextRulesetId { get; set; }
    public bool IsEnabled { get; set; }
}
