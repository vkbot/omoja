.class final Lorg/apache/logging/log4j/util/PrivateSecurityManagerStackTraceUtil$PrivateSecurityManager;
.super Ljava/lang/SecurityManager;
.source "PrivateSecurityManagerStackTraceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/util/PrivateSecurityManagerStackTraceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrivateSecurityManager"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/SecurityManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/util/PrivateSecurityManagerStackTraceUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/util/PrivateSecurityManagerStackTraceUtil$1;

    .line 72
    invoke-direct {p0}, Lorg/apache/logging/log4j/util/PrivateSecurityManagerStackTraceUtil$PrivateSecurityManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected getClassContext()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 76
    invoke-super {p0}, Ljava/lang/SecurityManager;->getClassContext()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
