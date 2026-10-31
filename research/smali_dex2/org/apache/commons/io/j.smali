.class public final synthetic Lorg/apache/commons/io/j;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/io/FilenameFilter;

.field public final synthetic e:Ljava/io/File;

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ZLjava/util/ArrayList;Ljava/io/FilenameFilter;Ljava/io/File;Ljava/util/List;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lorg/apache/commons/io/j;->b:Z

    .line 5
    .line 6
    iput-object p2, p0, Lorg/apache/commons/io/j;->c:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/apache/commons/io/j;->d:Ljava/io/FilenameFilter;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/apache/commons/io/j;->e:Ljava/io/File;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/apache/commons/io/j;->f:Ljava/util/List;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 8

    .line 1
    iget-object v4, p0, Lorg/apache/commons/io/j;->f:Ljava/util/List;

    .line 2
    .line 3
    move-object v5, p1

    .line 4
    check-cast v5, Ljava/io/File;

    .line 5
    .line 6
    iget-boolean v0, p0, Lorg/apache/commons/io/j;->b:Z

    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/commons/io/j;->c:Ljava/util/List;

    .line 9
    .line 10
    iget-object v2, p0, Lorg/apache/commons/io/j;->d:Ljava/io/FilenameFilter;

    .line 11
    .line 12
    iget-object v3, p0, Lorg/apache/commons/io/j;->e:Ljava/io/File;

    .line 13
    .line 14
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/io/FileUtils;->g(ZLjava/util/List;Ljava/io/FilenameFilter;Ljava/io/File;Ljava/util/List;Ljava/io/File;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
