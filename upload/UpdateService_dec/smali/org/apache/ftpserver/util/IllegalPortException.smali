.class public Lorg/apache/ftpserver/util/IllegalPortException;
.super Ljava/lang/IllegalArgumentException;
.source "IllegalPortException.java"


# static fields
.field private static final serialVersionUID:J = -0x6bdab1e25bc2a39bL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method
