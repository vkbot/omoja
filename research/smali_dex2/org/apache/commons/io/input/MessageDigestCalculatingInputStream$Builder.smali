.class public Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;
.super Lorg/apache/commons/io/input/ObservableInputStream$AbstractBuilder;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/input/ObservableInputStream$AbstractBuilder<",
        "Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private messageDigest:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/input/ObservableInputStream$AbstractBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_3
    invoke-static {}, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream;->getDefaultMessageDigest()Ljava/security/MessageDigest;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;->messageDigest:Ljava/security/MessageDigest;
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_9} :catch_a

    .line 9
    .line 10
    return-void

    .line 11
    :catch_a
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    throw v1
.end method

.method public static synthetic access$100(Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;)Ljava/security/MessageDigest;
    .registers 1

    .line 1
    iget-object p0, p0, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;->messageDigest:Ljava/security/MessageDigest;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 28
    invoke-virtual {p0}, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;->get()Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream;
    .registers 4

    .line 1
    new-instance v0, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$MessageDigestMaintainingObserver;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;->messageDigest:Ljava/security/MessageDigest;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$MessageDigestMaintainingObserver;-><init>(Ljava/security/MessageDigest;)V

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
    new-instance v0, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream;-><init>(Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$1;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public setMessageDigest(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;->messageDigest:Ljava/security/MessageDigest;

    .line 6
    .line 7
    return-void
.end method

.method public setMessageDigest(Ljava/security/MessageDigest;)V
    .registers 2

    .line 8
    iput-object p1, p0, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$Builder;->messageDigest:Ljava/security/MessageDigest;

    return-void
.end method
