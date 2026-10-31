.class public Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;
.super Lorg/apache/commons/io/input/ObservableInputStream$AbstractBuilder;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/MessageDigestInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/input/ObservableInputStream$AbstractBuilder<",
        "Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private messageDigest:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/input/ObservableInputStream$AbstractBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;)Ljava/security/MessageDigest;
    .registers 1

    .line 1
    iget-object p0, p0, Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;->messageDigest:Ljava/security/MessageDigest;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 28
    invoke-virtual {p0}, Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;->get()Lorg/apache/commons/io/input/MessageDigestInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/MessageDigestInputStream;
    .registers 4

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/MessageDigestInputStream$MessageDigestMaintainingObserver;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;->messageDigest:Ljava/security/MessageDigest;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/apache/commons/io/input/MessageDigestInputStream$MessageDigestMaintainingObserver;-><init>(Ljava/security/MessageDigest;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    new-array v1, v1, [Lorg/apache/commons/io/input/ObservableInputStream$Observer;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v0, v1, v2

    .line 13
    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ObservableInputStream$AbstractBuilder;->setObservers(Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lorg/apache/commons/io/input/MessageDigestInputStream;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/MessageDigestInputStream;-><init>(Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;Lorg/apache/commons/io/input/MessageDigestInputStream$1;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public setMessageDigest(Ljava/lang/String;)Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;->messageDigest:Ljava/security/MessageDigest;

    .line 6
    .line 7
    return-object p0
.end method

.method public setMessageDigest(Ljava/security/MessageDigest;)Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;
    .registers 2

    .line 8
    iput-object p1, p0, Lorg/apache/commons/io/input/MessageDigestInputStream$Builder;->messageDigest:Ljava/security/MessageDigest;

    return-object p0
.end method
