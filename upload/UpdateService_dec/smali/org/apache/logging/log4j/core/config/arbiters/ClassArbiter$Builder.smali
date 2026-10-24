.class public Lorg/apache/logging/log4j/core/config/arbiters/ClassArbiter$Builder;
.super Ljava/lang/Object;
.source "ClassArbiter.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/config/arbiters/ClassArbiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/config/arbiters/ClassArbiter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ATTR_CLASS_NAME:Ljava/lang/String; = "className"


# instance fields
.field private className:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "className"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBuilder()Lorg/apache/logging/log4j/core/config/arbiters/ClassArbiter$Builder;
    .locals 0

    .line 67
    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/arbiters/ClassArbiter$Builder;->build()Lorg/apache/logging/log4j/core/config/arbiters/ClassArbiter;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/config/arbiters/ClassArbiter;
    .locals 3

    .line 71
    new-instance v0, Lorg/apache/logging/log4j/core/config/arbiters/ClassArbiter;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/config/arbiters/ClassArbiter$Builder;->className:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/config/arbiters/ClassArbiter;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/config/arbiters/ClassArbiter$1;)V

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/arbiters/ClassArbiter$Builder;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "className"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lorg/apache/logging/log4j/core/config/arbiters/ClassArbiter$Builder;->className:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/config/arbiters/ClassArbiter$Builder;->asBuilder()Lorg/apache/logging/log4j/core/config/arbiters/ClassArbiter$Builder;

    move-result-object v0

    return-object v0
.end method
