.class public final synthetic Landroidx/emoji2/text/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;

.field public final synthetic c:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

.field public final synthetic d:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public synthetic constructor <init>(Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/emoji2/text/c;->b:Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/emoji2/text/c;->c:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/emoji2/text/c;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/c;->c:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/emoji2/text/c;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/emoji2/text/c;->b:Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;->a(Landroidx/emoji2/text/EmojiCompatInitializer$BackgroundDefaultLoader;Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
