.class final Lorg/apache/logging/log4j/util/PrivateSecurityManagerStackTraceUtil;
.super Ljava/lang/Object;
.source "PrivateSecurityManagerStackTraceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/util/PrivateSecurityManagerStackTraceUtil$PrivateSecurityManager;
    }
.end annotation


# static fields
.field private static final SECURITY_MANAGER:Lorg/apache/logging/log4j/util/PrivateSecurityManagerStackTraceUtil$PrivateSecurityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 35
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 36
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "createSecurityManager"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 38
    :cond_0
    new-instance v1, Lorg/apache/logging/log4j/util/PrivateSecurityManagerStackTraceUtil$PrivateSecurityManager;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/logging/log4j/util/PrivateSecurityManagerStackTraceUtil$PrivateSecurityManager;-><init>(Lorg/apache/logging/log4j/util/PrivateSecurityManagerStackTraceUtil$1;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 41
    .local v0, "psm":Lorg/apache/logging/log4j/util/PrivateSecurityManagerStackTraceUtil$PrivateSecurityManager;
    goto :goto_0

    .line 39
    .end local v0    # "psm":Lorg/apache/logging/log4j/util/PrivateSecurityManagerStackTraceUtil$PrivateSecurityManager;
    :catch_0
    move-exception v0

    .line 40
    .local v0, "ignored":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 43
    .local v0, "psm":Lorg/apache/logging/log4j/util/PrivateSecurityManagerStackTraceUtil$PrivateSecurityManager;
    :goto_0
    sput-object v0, Lorg/apache/logging/log4j/util/PrivateSecurityManagerStackTraceUtil;->SECURITY_MANAGER:Lorg/apache/logging/log4j/util/PrivateSecurityManagerStackTraceUtil$PrivateSecurityManager;

    .line 44
    .end local v0    # "psm":Lorg/apache/logging/log4j/util/PrivateSecurityManagerStackTraceUtil$PrivateSecurityManager;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method static getCurrentStackTrace()Ljava/util/Deque;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 66
    sget-object v0, Lorg/apache/logging/log4j/util/PrivateSecurityManagerStackTraceUtil;->SECURITY_MANAGER:Lorg/apache/logging/log4j/util/PrivateSecurityManagerStackTraceUtil$PrivateSecurityManager;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/util/PrivateSecurityManagerStackTraceUtil$PrivateSecurityManager;->getClassContext()[Ljava/lang/Class;

    move-result-object v0

    .line 67
    .local v0, "array":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v1, Ljava/util/ArrayDeque;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 68
    .local v1, "classes":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/lang/Class<*>;>;"
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 69
    return-object v1
.end method

.method static isEnabled()Z
    .locals 1

    .line 51
    sget-object v0, Lorg/apache/logging/log4j/util/PrivateSecurityManagerStackTraceUtil;->SECURITY_MANAGER:Lorg/apache/logging/log4j/util/PrivateSecurityManagerStackTraceUtil$PrivateSecurityManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
