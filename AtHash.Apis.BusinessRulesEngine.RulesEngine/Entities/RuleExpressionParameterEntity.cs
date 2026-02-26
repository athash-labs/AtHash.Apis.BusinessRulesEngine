using System;

public class RuleExpressionParameterEntity
{
    public int Id { get; set; }
    public string Name { get; set; }
    public string Value { get; set; }
    public int RuleExpressionParameterDataTypeId { get; set; }
    public int RuleExpressionId { get; set; }
    public bool IsDeleted { get; set; }
}
