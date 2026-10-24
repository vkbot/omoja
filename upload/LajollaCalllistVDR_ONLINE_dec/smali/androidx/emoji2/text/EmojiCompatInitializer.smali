.class public Landroidx/emoji2/text/EmojiCompatInitializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu0/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lu0/b;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3

    new-instance v0, Landroidx/emoji2/text/n;

    invoke-direct {v0, p1}, Landroidx/emoji2/text/n;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroidx/emoji2/text/m;->j:Landroidx/emoji2/text/m;

    if-nez v1, :cond_1

    sget-object v1, Landroidx/emoji2/text/m;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroidx/emoji2/text/m;->j:Landroidx/emoji2/text/m;

    if-nez v2, :cond_0

    new-instance v2, Landroidx/emoji2/text/m;

    invoke-direct {v2, v0}, Landroidx/emoji2/text/m;-><init>(Landroidx/emoji2/text/n;)V

    sput-object v2, Landroidx/emoji2/text/m;->j:Landroidx/emoji2/text/m;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    sget-object v0, Lu0/a;->d:Lu0/a;

    if-nez v0, :cond_3

    sget-object v0, Lu0/a;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    sget-object v1, Lu0/a;->d:Lu0/a;

    if-nez v1, :cond_2

    new-instance v1, Lu0/a;

    invoke-direct {v1, p1}, Lu0/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lu0/a;->d:Lu0/a;

    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_3
    :goto_1
    sget-object p1, Lu0/a;->d:Lu0/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-class v1, Landroidx/lifecycle/ProcessLifecycleInitializer;

    invoke-virtual {p1, v1, v0}, Lu0/a;->a(Ljava/lang/Class;Ljava/util/HashSet;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/n;

    invoke-interface {p1}, Landroidx/lifecycle/n;->getLifecycle()Landroidx/lifecycle/i;

    move-result-object p1

    new-instance v0, Landroidx/emoji2/text/EmojiCompatInitializer$1;

    invoke-direct {v0, p0, p1}, Landroidx/emoji2/text/EmojiCompatInitializer$1;-><init>(Landroidx/emoji2/text/EmojiCompatInitializer;Landroidx/lifecycle/i;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/m;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final bridge synthetic create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/EmojiCompatInitializer;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final dependencies()Ljava/util/List;
    .locals 1

    const-class v0, Landroidx/lifecycle/ProcessLifecycleInitializer;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
