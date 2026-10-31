.class public Lcom/example/navistart/cores/Saa;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field private final i:I

.field private final ratio:I

.field private final s1:Ljava/lang/String;

.field private final s2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/16 v0, 0x32

    .line 13
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/example/navistart/cores/Saa;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/example/navistart/cores/Saa;->s1:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/example/navistart/cores/Saa;->s2:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/example/navistart/cores/Saa;->i:I

    .line 9
    .line 10
    iput p4, p0, Lcom/example/navistart/cores/Saa;->ratio:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getI()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/example/navistart/cores/Saa;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public getRatio()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/example/navistart/cores/Saa;->ratio:I

    .line 2
    .line 3
    return v0
.end method

.method public getS1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/example/navistart/cores/Saa;->s1:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getS2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/example/navistart/cores/Saa;->s2:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
