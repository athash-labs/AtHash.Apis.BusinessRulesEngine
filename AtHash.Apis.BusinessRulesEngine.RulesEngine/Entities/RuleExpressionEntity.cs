using System;

public class RuleExpressionEntity
{
    public int Id { get; set; }
    public string? Name { get; set; }
    public int RuleId { get; set; }
    public int RuleExpressionParameterId { get; set; }
    public int RuleExpressionOperatorId { get; set; }
    public string? RuleExpressionParameterValue { get; set; }
    public bool IsDeleted { get; set; }
}
