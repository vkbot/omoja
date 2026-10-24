.class public final Ll/m$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/j$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ln/a$a;

.field public volatile b:Ln/a;


# direct methods
.method public constructor <init>(Ln/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/m$c;->a:Ln/a$a;

    return-void
.end method


# virtual methods
.method public final a()Ln/a;
    .locals 5

    iget-object v0, p0, Ll/m$c;->b:Ln/a;

    if-nez v0, :cond_7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll/m$c;->b:Ln/a;

    if-nez v0, :cond_5

    iget-object v0, p0, Ll/m$c;->a:Ln/a$a;

    check-cast v0, Ln/c;

    iget-object v1, v0, Ln/c;->b:Ln/c$a;

    check-cast v1, Ln/e;

    iget-object v2, v1, Ln/e;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-object v1, v1, Ln/e;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v4

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v3, Ln/d;

    iget-wide v0, v0, Ln/c;->a:J

    invoke-direct {v3, v2, v0, v1}, Ln/d;-><init>(Ljava/io/File;J)V

    :cond_4
    :goto_1
    iput-object v3, p0, Ll/m$c;->b:Ln/a;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v0, p0, Ll/m$c;->b:Ln/a;

    if-nez v0, :cond_6

    new-instance v0, Ld/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ll/m$c;->b:Ln/a;

    :cond_6
    monitor-exit p0

    goto :goto_4

    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    :goto_4
    iget-object p0, p0, Ll/m$c;->b:Ln/a;

    return-object p0
.end method
