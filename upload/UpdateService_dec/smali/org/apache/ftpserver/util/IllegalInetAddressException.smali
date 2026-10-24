.class public Lorg/apache/ftpserver/util/IllegalInetAddressException;
.super Ljava/lang/IllegalArgumentException;
.source "IllegalInetAddressException.java"


# static fields
.field private static final serialVersionUID:J = -0x6bdab1e25bc2a39dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method
