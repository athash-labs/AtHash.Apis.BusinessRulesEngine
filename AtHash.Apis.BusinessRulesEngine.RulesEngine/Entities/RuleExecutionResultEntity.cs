using System;

public class RuleExecutionResultEntity
{
    public int Id { get; set; }
    public int OrderSequence { get; set; }
    public int WorkflowId { get; set; }
    public int RulesetId { get; set; }
    public int RuleId { get; set; }
    public int RuleExpressionId { get; set; }
    public int RuleExpressionParameterId { get; set; }
    public string Message { get; set; }
    public int IsEnabled { get; set; }
}
