.class public Lorg/apache/poi/ss/util/PaneInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PANE_LOWER_LEFT:B = 0x2t

.field public static final PANE_LOWER_RIGHT:B = 0x0t

.field public static final PANE_UPPER_LEFT:B = 0x3t

.field public static final PANE_UPPER_RIGHT:B = 0x1t


# instance fields
.field private final activePane:B

.field private final frozen:Z

.field private final leftColumn:S

.field private final topRow:S

.field private final x:S

.field private final y:S


# direct methods
.method public constructor <init>(SSSSBZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lorg/apache/poi/ss/util/PaneInformation;->x:S

    iput-short p2, p0, Lorg/apache/poi/ss/util/PaneInformation;->y:S

    iput-short p3, p0, Lorg/apache/poi/ss/util/PaneInformation;->topRow:S

    iput-short p4, p0, Lorg/apache/poi/ss/util/PaneInformation;->leftColumn:S

    iput-byte p5, p0, Lorg/apache/poi/ss/util/PaneInformation;->activePane:B

    iput-boolean p6, p0, Lorg/apache/poi/ss/util/PaneInformation;->frozen:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/poi/ss/util/PaneInformation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/apache/poi/ss/util/PaneInformation;

    iget-short v1, p0, Lorg/apache/poi/ss/util/PaneInformation;->x:S

    iget-short v3, p1, Lorg/apache/poi/ss/util/PaneInformation;->x:S

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-short v1, p0, Lorg/apache/poi/ss/util/PaneInformation;->y:S

    iget-short v3, p1, Lorg/apache/poi/ss/util/PaneInformation;->y:S

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-short v1, p0, Lorg/apache/poi/ss/util/PaneInformation;->topRow:S

    iget-short v3, p1, Lorg/apache/poi/ss/util/PaneInformation;->topRow:S

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-short v1, p0, Lorg/apache/poi/ss/util/PaneInformation;->leftColumn:S

    iget-short v3, p1, Lorg/apache/poi/ss/util/PaneInformation;->leftColumn:S

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-byte v1, p0, Lorg/apache/poi/ss/util/PaneInformation;->activePane:B

    iget-byte v3, p1, Lorg/apache/poi/ss/util/PaneInformation;->activePane:B

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean p0, p0, Lorg/apache/poi/ss/util/PaneInformation;->frozen:Z

    iget-boolean p1, p1, Lorg/apache/poi/ss/util/PaneInformation;->frozen:Z

    if-ne p0, p1, :cond_7

    goto :goto_0

    :cond_7
    move v0, v2

    :goto_0
    return v0
.end method

.method public getActivePane()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/ss/util/PaneInformation;->activePane:B

    return p0
.end method

.method public getActivePaneType()Lorg/apache/poi/ss/usermodel/PaneType;
    .locals 1

    iget-byte p0, p0, Lorg/apache/poi/ss/util/PaneInformation;->activePane:B

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/poi/ss/usermodel/PaneType;->UPPER_LEFT:Lorg/apache/poi/ss/usermodel/PaneType;

    return-object p0

    :cond_1
    sget-object p0, Lorg/apache/poi/ss/usermodel/PaneType;->LOWER_LEFT:Lorg/apache/poi/ss/usermodel/PaneType;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/poi/ss/usermodel/PaneType;->UPPER_RIGHT:Lorg/apache/poi/ss/usermodel/PaneType;

    return-object p0

    :cond_3
    sget-object p0, Lorg/apache/poi/ss/usermodel/PaneType;->LOWER_RIGHT:Lorg/apache/poi/ss/usermodel/PaneType;

    return-object p0
.end method

.method public getHorizontalSplitPosition()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/ss/util/PaneInformation;->y:S

    return p0
.end method

.method public getHorizontalSplitTopRow()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/ss/util/PaneInformation;->topRow:S

    return p0
.end method

.method public getVerticalSplitLeftColumn()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/ss/util/PaneInformation;->leftColumn:S

    return p0
.end method

.method public getVerticalSplitPosition()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/ss/util/PaneInformation;->x:S

    return p0
.end method

.method public hashCode()I
    .locals 7

    iget-short v0, p0, Lorg/apache/poi/ss/util/PaneInformation;->x:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    iget-short v0, p0, Lorg/apache/poi/ss/util/PaneInformation;->y:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    iget-short v0, p0, Lorg/apache/poi/ss/util/PaneInformation;->topRow:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    iget-short v0, p0, Lorg/apache/poi/ss/util/PaneInformation;->leftColumn:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    iget-byte v0, p0, Lorg/apache/poi/ss/util/PaneInformation;->activePane:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    iget-boolean p0, p0, Lorg/apache/poi/ss/util/PaneInformation;->frozen:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isFreezePane()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ss/util/PaneInformation;->frozen:Z

    return p0
.end method
