.class public Lcom/mega/nexus/util/ReflectionHelpers$StringParameter;
.super Ljava/lang/Object;
.source "ReflectionHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/nexus/util/ReflectionHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringParameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final className:Ljava/lang/String;

.field public final val:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)V"
        }
    .end annotation

    .line 289
    .local p0, "this":Lcom/mega/nexus/util/ReflectionHelpers$StringParameter;, "Lcom/mega/nexus/util/ReflectionHelpers$StringParameter<TV;>;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p1, p0, Lcom/mega/nexus/util/ReflectionHelpers$StringParameter;->className:Ljava/lang/String;

    .line 291
    iput-object p2, p0, Lcom/mega/nexus/util/ReflectionHelpers$StringParameter;->val:Ljava/lang/Object;

    .line 292
    return-void
.end method

.method public static from(Ljava/lang/String;Ljava/lang/Object;)Lcom/mega/nexus/util/ReflectionHelpers$StringParameter;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TV;)",
            "Lcom/mega/nexus/util/ReflectionHelpers$StringParameter<",
            "TV;>;"
        }
    .end annotation

    .line 295
    .local p1, "val":Ljava/lang/Object;, "TV;"
    new-instance v0, Lcom/mega/nexus/util/ReflectionHelpers$StringParameter;

    invoke-direct {v0, p0, p1}, Lcom/mega/nexus/util/ReflectionHelpers$StringParameter;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
