.class public Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter;
.super Ljava/lang/Object;
.source "ReflectionHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/nexus/util/ReflectionHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassParameter"
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
.field public final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TV;>;"
        }
    .end annotation
.end field

.field public final val:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TV;>;TV;)V"
        }
    .end annotation

    .line 252
    .local p0, "this":Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter;, "Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter<TV;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TV;>;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p1, p0, Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter;->clazz:Ljava/lang/Class;

    .line 254
    iput-object p2, p0, Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter;->val:Ljava/lang/Object;

    .line 255
    return-void
.end method

.method public static from(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TV;>;TV;)",
            "Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter<",
            "TV;>;"
        }
    .end annotation

    .line 258
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TV;>;"
    .local p1, "val":Ljava/lang/Object;, "TV;"
    new-instance v0, Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter;

    invoke-direct {v0, p0, p1}, Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs getClasses([Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter;)[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter<",
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 262
    .local p0, "classParameters":[Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter;, "[Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter<*>;"
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Class;

    .line 263
    .local v0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 264
    aget-object v2, p0, v1

    iget-object v2, v2, Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter;->clazz:Ljava/lang/Class;

    .line 265
    .local v2, "paramClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aput-object v2, v0, v1

    .line 263
    .end local v2    # "paramClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static varargs getValues([Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter<",
            "*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 271
    .local p0, "classParameters":[Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter;, "[Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter<*>;"
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Object;

    .line 272
    .local v0, "values":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 273
    aget-object v2, p0, v1

    iget-object v2, v2, Lcom/mega/nexus/util/ReflectionHelpers$ClassParameter;->val:Ljava/lang/Object;

    .line 274
    .local v2, "paramValue":Ljava/lang/Object;
    aput-object v2, v0, v1

    .line 272
    .end local v2    # "paramValue":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
