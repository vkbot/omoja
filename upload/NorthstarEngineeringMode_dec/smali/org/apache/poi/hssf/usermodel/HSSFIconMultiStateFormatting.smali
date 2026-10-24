.class public final Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting;


# instance fields
.field private final iconFormatting:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

.field private final sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/CFRule12Record;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/CFRule12Record;->getMultiStateFormatting()Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->iconFormatting:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    return-void
.end method


# virtual methods
.method public createThreshold()Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;

    new-instance v1, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/cf/IconMultiStateThreshold;-><init>()V

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;-><init>(Lorg/apache/poi/hssf/record/cf/Threshold;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    return-object v0
.end method

.method public bridge synthetic createThreshold()Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->createThreshold()Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;

    move-result-object p0

    return-object p0
.end method

.method public getIconSet()Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->iconFormatting:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->getIconSet()Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-result-object p0

    return-object p0
.end method

.method public getThresholds()[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->iconFormatting:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    .line 2
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->getThresholds()[Lorg/apache/poi/hssf/record/cf/Threshold;

    move-result-object v0

    .line 3
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;

    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 5
    new-instance v3, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;

    aget-object v4, v0, v2

    iget-object v5, p0, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;-><init>(Lorg/apache/poi/hssf/record/cf/Threshold;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public bridge synthetic getThresholds()[Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->getThresholds()[Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;

    move-result-object p0

    return-object p0
.end method

.method public isIconOnly()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->iconFormatting:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->isIconOnly()Z

    move-result p0

    return p0
.end method

.method public isReversed()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->iconFormatting:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->isReversed()Z

    move-result p0

    return p0
.end method

.method public setIconOnly(Z)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->iconFormatting:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->setIconOnly(Z)V

    return-void
.end method

.method public setIconSet(Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->iconFormatting:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->setIconSet(Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;)V

    return-void
.end method

.method public setReversed(Z)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->iconFormatting:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->setReversed(Z)V

    return-void
.end method

.method public setThresholds([Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;)V
    .locals 4

    array-length v0, p1

    new-array v1, v0, [Lorg/apache/poi/hssf/record/cf/Threshold;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    check-cast v3, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;->getThreshold()Lorg/apache/poi/hssf/record/cf/Threshold;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFIconMultiStateFormatting;->iconFormatting:Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cf/IconMultiStateFormatting;->setThresholds([Lorg/apache/poi/hssf/record/cf/Threshold;)V

    return-void
.end method
