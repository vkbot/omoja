.class public final Lmega/widget/AnimationItemConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private animationDuration:J

.field private final animationFilePath:Ljava/lang/String;

.field private animationFrames:I

.field private layerIndex:I

.field private final state:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    const-string v0, "animationFilePath"

    invoke-static {p2, v0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmega/widget/AnimationItemConfig;->state:I

    iput-object p2, p0, Lmega/widget/AnimationItemConfig;->animationFilePath:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lmega/widget/AnimationItemConfig;->layerIndex:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmega/widget/AnimationItemConfig;->animationDuration:J

    iput p1, p0, Lmega/widget/AnimationItemConfig;->animationFrames:I

    return-void
.end method

.method public static synthetic copy$default(Lmega/widget/AnimationItemConfig;ILjava/lang/String;ILjava/lang/Object;)Lmega/widget/AnimationItemConfig;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lmega/widget/AnimationItemConfig;->state:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lmega/widget/AnimationItemConfig;->animationFilePath:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lmega/widget/AnimationItemConfig;->copy(ILjava/lang/String;)Lmega/widget/AnimationItemConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lmega/widget/AnimationItemConfig;->state:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmega/widget/AnimationItemConfig;->animationFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;)Lmega/widget/AnimationItemConfig;
    .locals 0

    const-string p0, "animationFilePath"

    invoke-static {p2, p0}, Lo3/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lmega/widget/AnimationItemConfig;

    invoke-direct {p0, p1, p2}, Lmega/widget/AnimationItemConfig;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lmega/widget/AnimationItemConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lmega/widget/AnimationItemConfig;

    iget v1, p0, Lmega/widget/AnimationItemConfig;->state:I

    iget v3, p1, Lmega/widget/AnimationItemConfig;->state:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lmega/widget/AnimationItemConfig;->animationFilePath:Ljava/lang/String;

    iget-object p1, p1, Lmega/widget/AnimationItemConfig;->animationFilePath:Ljava/lang/String;

    invoke-static {p0, p1}, Lo3/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAnimationDuration()J
    .locals 2

    iget-wide v0, p0, Lmega/widget/AnimationItemConfig;->animationDuration:J

    return-wide v0
.end method

.method public final getAnimationFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmega/widget/AnimationItemConfig;->animationFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public final getAnimationFrames()I
    .locals 0

    iget p0, p0, Lmega/widget/AnimationItemConfig;->animationFrames:I

    return p0
.end method

.method public final getLayerIndex()I
    .locals 0

    iget p0, p0, Lmega/widget/AnimationItemConfig;->layerIndex:I

    return p0
.end method

.method public final getState()I
    .locals 0

    iget p0, p0, Lmega/widget/AnimationItemConfig;->state:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lmega/widget/AnimationItemConfig;->state:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lmega/widget/AnimationItemConfig;->animationFilePath:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setAnimationDuration(J)V
    .locals 0

    iput-wide p1, p0, Lmega/widget/AnimationItemConfig;->animationDuration:J

    return-void
.end method

.method public final setAnimationFrames(I)V
    .locals 0

    iput p1, p0, Lmega/widget/AnimationItemConfig;->animationFrames:I

    return-void
.end method

.method public final setLayerIndex(I)V
    .locals 0

    iput p1, p0, Lmega/widget/AnimationItemConfig;->layerIndex:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnimationItemConfig(state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lmega/widget/AnimationItemConfig;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", animationFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmega/widget/AnimationItemConfig;->animationFilePath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
