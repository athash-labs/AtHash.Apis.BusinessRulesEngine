using System;

using Microsoft.EntityFrameworkCore;

public class BusinessRulesEngineDbContext : DbContext
{
    public DbSet<CombinerTypeEntity> CombinerTypes { get; set; }
    public DbSet<RuleCombinationEntity> RuleCombinations { get; set; }
    public DbSet<RuleEntity> Rules { get; set; }
    public DbSet<RuleExecutionResultEntity> RuleExecutionResults { get; set; }
    public DbSet<RuleExpressionCombinationEntity> RuleExpressionCombinations { get; set; }
    public DbSet<RuleExpressionEntity> RuleExpressions { get; set; }
    public DbSet<RuleExpressionOperatorEntity> RuleExpressionOperators { get; set; }
    public DbSet<RuleExpressionParameterDataTypeEntity> RuleExpressionParameterDataTypes { get; set; }
    public DbSet<RuleExpressionParameterEntity> RuleExpressionParameters { get; set; }
    public DbSet<RulesetCombinationEntity> RulesetCombinations { get; set; }
    public DbSet<RulesetEntity> Rulesets { get; set; }
    public DbSet<WorkflowEntity> Workflows { get; set; }

    public BusinessRulesEngineDbContext(DbContextOptions<BusinessRulesEngineDbContext> options)
        : base(options)
    {
    }
}
