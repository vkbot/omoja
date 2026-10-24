.class public Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
.super Ljava/lang/Object;
.source "CommandLine.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Text"
.end annotation


# instance fields
.field private from:I

.field private length:I

.field private final maxLength:I

.field private plain:Ljava/lang/StringBuilder;

.field private sections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;I)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
    .param p2, "maxLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10
        }
        names = {
            "this$0",
            "maxLength"
        }
    .end annotation

    .line 4453
    iput-object p1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    .line 4449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->sections:Ljava/util/List;

    .line 4453
    iput p2, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->maxLength:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/lang/String;)V
    .locals 17
    .param p1, "this$0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;
    .param p2, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10
        }
        names = {
            "this$0",
            "input"
        }
    .end annotation

    .line 4460
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    iput-object v2, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4448
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    .line 4449
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->sections:Ljava/util/List;

    .line 4461
    const/4 v3, -0x1

    iput v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->maxLength:I

    .line 4462
    iget-object v4, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4463
    const/4 v4, 0x0

    .line 4466
    .local v4, "i":I
    :goto_0
    const-string v6, "@|"

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 4467
    .local v6, "j":I
    if-ne v6, v3, :cond_1

    .line 4468
    if-nez v4, :cond_0

    .line 4469
    iget-object v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4470
    iget-object v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iput v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->length:I

    .line 4471
    return-void

    .line 4473
    :cond_0
    iget-object v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4474
    iget-object v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iput v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->length:I

    .line 4475
    return-void

    .line 4477
    :cond_1
    iget-object v7, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4478
    const-string v7, "|@"

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 4479
    .local v7, "k":I
    if-ne v7, v3, :cond_2

    .line 4480
    iget-object v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4481
    iget-object v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iput v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->length:I

    .line 4482
    return-void

    .line 4485
    :cond_2
    add-int/lit8 v6, v6, 0x2

    .line 4486
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 4487
    .local v8, "spec":Ljava/lang/String;
    const-string v9, " "

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 4488
    .local v9, "items":[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 4489
    iget-object v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4490
    iget-object v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iput v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->length:I

    .line 4491
    return-void

    .line 4494
    :cond_3
    aget-object v10, v9, v5

    invoke-static {v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->parse(Ljava/lang/String;)[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;

    move-result-object v10

    .line 4495
    .local v10, "styles":[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;
    iget-object v12, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    aget-object v13, v9, v11

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    .line 4496
    invoke-static {v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->on([Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->access$3700([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;

    invoke-static/range {v16 .. v16}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->off([Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->reset:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;

    invoke-virtual {v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Style;->off()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4495
    invoke-direct {v0, v12, v13, v14, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->addStyledSection(IILjava/lang/String;Ljava/lang/String;)V

    .line 4497
    iget-object v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    aget-object v11, v9, v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4498
    add-int/lit8 v4, v7, 0x2

    .line 4499
    .end local v6    # "j":I
    .end local v7    # "k":I
    .end local v8    # "spec":Ljava/lang/String;
    .end local v9    # "items":[Ljava/lang/String;
    .end local v10    # "styles":[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$IStyle;
    const/4 v3, -0x1

    goto/16 :goto_0
.end method

.method static synthetic access$3100(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    .line 4444
    iget v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->length:I

    return v0
.end method

.method static synthetic access$3102(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;I)I
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .param p1, "x1"    # I

    .line 4444
    iput p1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->length:I

    return p1
.end method

.method static synthetic access$3300(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    .line 4444
    iget v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->maxLength:I

    return v0
.end method

.method static synthetic access$3400(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    .line 4444
    iget v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->from:I

    return v0
.end method

.method static synthetic access$3600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    .line 4444
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->sections:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    .line 4444
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private addStyledSection(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "startStyle"    # Ljava/lang/String;
    .param p4, "endStyle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "start",
            "length",
            "startStyle",
            "endStyle"
        }
    .end annotation

    .line 4502
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->sections:Ljava/util/List;

    new-instance v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4503
    return-void
.end method

.method private findSectionContaining(I)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "index"
        }
    .end annotation

    .line 4629
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;

    .line 4630
    .local v1, "section":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;
    iget v2, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;->startIndex:I

    if-lt p1, v2, :cond_0

    iget v2, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;->startIndex:I

    iget v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;->length:I

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_0

    .line 4631
    return-object v1

    .line 4633
    .end local v1    # "section":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;
    :cond_0
    goto :goto_0

    .line 4634
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "string"
        }
    .end annotation

    .line 4551
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    invoke-direct {v0, v1, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->append(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v0

    return-object v0
.end method

.method public append(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .locals 6
    .param p1, "other"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "other"
        }
    .end annotation

    .line 4558
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    .line 4559
    .local v0, "result":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->from:I

    iget v4, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->length:I

    add-int/2addr v4, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    .line 4560
    const/4 v1, 0x0

    iput v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->from:I

    .line 4561
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->sections:Ljava/util/List;

    .line 4562
    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->sections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;

    .line 4563
    .local v2, "section":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;
    iget-object v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->sections:Ljava/util/List;

    iget v4, v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;->startIndex:I

    iget v5, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->from:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;->withStartIndex(I)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4564
    .end local v2    # "section":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;
    goto :goto_0

    .line 4565
    :cond_0
    iget-object v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->from:I

    iget v4, p1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->length:I

    add-int/2addr v4, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4566
    iget-object v1, p1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->sections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;

    .line 4567
    .restart local v2    # "section":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;
    iget v3, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->length:I

    iget v4, v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;->startIndex:I

    add-int/2addr v3, v4

    iget v4, p1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->from:I

    sub-int/2addr v3, v4

    .line 4568
    .local v3, "index":I
    iget-object v4, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->sections:Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;->withStartIndex(I)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4569
    .end local v2    # "section":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;
    .end local v3    # "index":I
    goto :goto_1

    .line 4570
    :cond_1
    iget-object v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iput v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->length:I

    .line 4571
    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 4506
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 4599
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getStyledChars(IILorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;I)V
    .locals 5
    .param p1, "from"    # I
    .param p2, "length"    # I
    .param p3, "destination"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .param p4, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "from",
            "length",
            "destination",
            "offset"
        }
    .end annotation

    .line 4582
    iget v0, p3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->length:I

    if-ge v0, p4, :cond_1

    .line 4583
    iget v0, p3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->length:I

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 4584
    iget-object v1, p3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4583
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4586
    .end local v0    # "i":I
    :cond_0
    iput p4, p3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->length:I

    .line 4588
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->sections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;

    .line 4589
    .local v1, "section":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;
    iget-object v2, p3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->sections:Ljava/util/List;

    iget v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;->startIndex:I

    sub-int/2addr v3, p1

    iget v4, p3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->length:I

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;->withStartIndex(I)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4590
    .end local v1    # "section":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;
    goto :goto_1

    .line 4591
    :cond_2
    iget-object v0, p3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4592
    iget-object v0, p3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->length:I

    .line 4593
    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 4601
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public plainString()Ljava/lang/String;
    .locals 3

    .line 4596
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->from:I

    iget v2, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->length:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public splitLines()[Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .locals 13

    .line 4510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4511
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;>;"
    const/4 v1, 0x0

    .line 4512
    .local v1, "trailingEmptyString":Z
    const/4 v2, 0x0

    .local v2, "start":I
    const/4 v3, 0x0

    .line 4513
    .local v3, "end":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 4514
    iget-object v5, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    .line 4515
    .local v5, "c":C
    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v6, :cond_0

    move v9, v8

    goto :goto_1

    :cond_0
    move v9, v7

    .line 4516
    .local v9, "eol":Z
    :goto_1
    const/16 v10, 0xd

    if-ne v5, v10, :cond_1

    add-int/lit8 v11, v4, 0x1

    iget-object v12, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-ge v11, v12, :cond_1

    iget-object v11, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    if-ne v11, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_1

    move v6, v8

    goto :goto_2

    :cond_1
    move v6, v7

    :goto_2
    or-int/2addr v6, v9

    .line 4517
    .end local v9    # "eol":Z
    .local v6, "eol":Z
    if-ne v5, v10, :cond_2

    move v9, v8

    goto :goto_3

    :cond_2
    move v9, v7

    :goto_3
    or-int/2addr v6, v9

    .line 4518
    if-eqz v6, :cond_4

    .line 4519
    invoke-virtual {p0, v2, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->substring(II)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4520
    iget-object v9, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    sub-int/2addr v9, v8

    if-ne v4, v9, :cond_3

    move v7, v8

    :cond_3
    move v1, v7

    .line 4521
    add-int/lit8 v2, v4, 0x1

    .line 4513
    .end local v5    # "c":C
    .end local v6    # "eol":Z
    :cond_4
    add-int/lit8 v4, v4, 0x1

    move v3, v4

    goto :goto_0

    .line 4524
    .end local v4    # "i":I
    :cond_5
    iget-object v4, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lt v2, v4, :cond_6

    if-eqz v1, :cond_7

    .line 4525
    :cond_6
    iget-object v4, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->substring(II)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4527
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    return-object v4
.end method

.method public substring(I)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .locals 1
    .param p1, "start"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "start"
        }
    .end annotation

    .line 4534
    iget v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->length:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->substring(II)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .line 4542
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    .line 4543
    .local v0, "result":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    iget v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->from:I

    add-int/2addr v1, p1

    iput v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->from:I

    .line 4544
    sub-int v1, p2, p1

    iput v1, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->length:I

    .line 4545
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 4608
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->enabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4609
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->from:I

    iget v2, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->length:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4611
    :cond_0
    iget v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->length:I

    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    .line 4612
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iget-object v2, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->sections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x14

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4613
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 4614
    .local v1, "current":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;
    iget v2, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->from:I

    iget v3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->length:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4615
    .local v2, "end":I
    iget v3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->from:I

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_5

    .line 4616
    invoke-direct {p0, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->findSectionContaining(I)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;

    move-result-object v4

    .line 4617
    .local v4, "section":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;
    if-eq v4, v1, :cond_4

    .line 4618
    if-eqz v1, :cond_2

    iget-object v5, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;->endStyles:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4619
    :cond_2
    if-eqz v4, :cond_3

    iget-object v5, v4, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;->startStyles:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4620
    :cond_3
    move-object v1, v4

    .line 4622
    :cond_4
    iget-object v5, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;->plain:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4615
    .end local v4    # "section":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4624
    .end local v3    # "i":I
    :cond_5
    if-eqz v1, :cond_6

    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$StyledSection;->endStyles:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4625
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
