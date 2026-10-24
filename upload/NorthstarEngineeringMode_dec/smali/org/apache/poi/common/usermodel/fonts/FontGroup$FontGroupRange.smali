.class public Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/common/usermodel/fonts/FontGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontGroupRange"
.end annotation


# instance fields
.field private final fontGroup:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

.field private len:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/common/usermodel/fonts/FontGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->len:I

    iput-object p1, p0, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->fontGroup:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;)Lorg/apache/poi/common/usermodel/fonts/FontGroup;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->fontGroup:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    return-object p0
.end method


# virtual methods
.method public getFontGroup()Lorg/apache/poi/common/usermodel/fonts/FontGroup;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->fontGroup:Lorg/apache/poi/common/usermodel/fonts/FontGroup;

    return-object p0
.end method

.method public getLength()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->len:I

    return p0
.end method

.method public increaseLength(I)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->len:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/poi/common/usermodel/fonts/FontGroup$FontGroupRange;->len:I

    return-void
.end method
