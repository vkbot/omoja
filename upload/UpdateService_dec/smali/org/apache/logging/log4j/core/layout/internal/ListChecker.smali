.class public interface abstract Lorg/apache/logging/log4j/core/layout/internal/ListChecker;
.super Ljava/lang/Object;
.source "ListChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/layout/internal/ListChecker$NoopChecker;
    }
.end annotation


# static fields
.field public static final NOOP_CHECKER:Lorg/apache/logging/log4j/core/layout/internal/ListChecker$NoopChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lorg/apache/logging/log4j/core/layout/internal/ListChecker$NoopChecker;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/layout/internal/ListChecker$NoopChecker;-><init>()V

    sput-object v0, Lorg/apache/logging/log4j/core/layout/internal/ListChecker;->NOOP_CHECKER:Lorg/apache/logging/log4j/core/layout/internal/ListChecker$NoopChecker;

    return-void
.end method


# virtual methods
.method public abstract check(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation
.end method
