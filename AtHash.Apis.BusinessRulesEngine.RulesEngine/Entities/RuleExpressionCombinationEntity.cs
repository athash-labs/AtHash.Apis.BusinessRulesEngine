using System;

public class RuleExpressionCombinationEntity
{
    public int Id { get; set; }
    public string Name { get; set; }
    public int OrderSequence { get; set; }
    public int CombinerTypeId { get; set; }
    public int PreviousRuleExpressionId { get; set; }
    public int NextRuleExpressionId { get; set; }
    public bool IsEnabled { get; set; }
}
