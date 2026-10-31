.class public Lorg/apache/commons/io/input/MessageDigestInputStream$MessageDigestMaintainingObserver;
.super Lorg/apache/commons/io/input/ObservableInputStream$Observer;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/MessageDigestInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageDigestMaintainingObserver"
.end annotation


# instance fields
.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/input/ObservableInputStream$Observer;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "messageDigest"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/apache/commons/io/input/MessageDigestInputStream$MessageDigestMaintainingObserver;->messageDigest:Ljava/security/MessageDigest;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public data(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/MessageDigestInputStream$MessageDigestMaintainingObserver;->messageDigest:Ljava/security/MessageDigest;

    .line 2
    .line 3
    int-to-byte p1, p1

    .line 4
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public data([BII)V
    .locals 1

    .line 8
    iget-object v0, p0, Lorg/apache/commons/io/input/MessageDigestInputStream$MessageDigestMaintainingObserver;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
