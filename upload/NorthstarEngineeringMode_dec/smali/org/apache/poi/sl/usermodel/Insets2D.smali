.class public final Lorg/apache/poi/sl/usermodel/Insets2D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;


# instance fields
.field public bottom:D

.field public left:D

.field public right:D

.field public top:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    iput-wide p3, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    iput-wide p5, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    iput-wide p7, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/sl/usermodel/Insets2D;->copy()Lorg/apache/poi/sl/usermodel/Insets2D;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/sl/usermodel/Insets2D;
    .locals 10

    .line 2
    new-instance v9, Lorg/apache/poi/sl/usermodel/Insets2D;

    iget-wide v1, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    iget-wide v3, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    iget-wide v5, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    iget-wide v7, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/sl/usermodel/Insets2D;-><init>(DDDD)V

    return-object v9
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lorg/apache/poi/sl/usermodel/Insets2D;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/sl/usermodel/Insets2D;

    iget-wide v2, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    iget-wide v4, p1, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    iget-wide v4, p1, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    iget-wide v4, p1, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    iget-wide p0, p1, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    cmpl-double p0, v2, p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 12

    iget-wide v0, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    iget-wide v2, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    add-double/2addr v2, v0

    iget-wide v4, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    iget-wide v6, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    add-double/2addr v4, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double v10, v2, v8

    mul-double/2addr v10, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v2

    add-double/2addr v10, v0

    add-double v0, v4, v8

    mul-double/2addr v0, v4

    div-double/2addr v0, v2

    add-double/2addr v0, v6

    add-double/2addr v10, v0

    add-double/2addr v8, v10

    mul-double/2addr v8, v10

    div-double/2addr v8, v2

    add-double/2addr v8, v0

    double-to-int p0, v8

    return p0
.end method

.method public set(DDDD)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    iput-wide p3, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    iput-wide p5, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    iput-wide p7, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/poi/sl/usermodel/Insets2D;

    const-string v2, "[top="

    invoke-static {v1, v0, v2}, Landroidx/activity/result/a;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->top:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->left:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->bottom:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/poi/sl/usermodel/Insets2D;->right:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
