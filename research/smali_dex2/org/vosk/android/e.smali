.class public final synthetic Lorg/vosk/android/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroid/os/Handler;

.field public final synthetic f:Lorg/vosk/android/StorageService$Callback;

.field public final synthetic g:Lorg/vosk/android/StorageService$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lorg/vosk/android/StorageService$Callback;Lorg/vosk/android/StorageService$Callback;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/vosk/android/e;->b:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/vosk/android/e;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/vosk/android/e;->d:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/vosk/android/e;->e:Landroid/os/Handler;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/vosk/android/e;->f:Lorg/vosk/android/StorageService$Callback;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/vosk/android/e;->g:Lorg/vosk/android/StorageService$Callback;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 1
    iget-object v4, p0, Lorg/vosk/android/e;->f:Lorg/vosk/android/StorageService$Callback;

    .line 2
    .line 3
    iget-object v5, p0, Lorg/vosk/android/e;->g:Lorg/vosk/android/StorageService$Callback;

    .line 4
    .line 5
    iget-object v0, p0, Lorg/vosk/android/e;->b:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/vosk/android/e;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/vosk/android/e;->d:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v3, p0, Lorg/vosk/android/e;->e:Landroid/os/Handler;

    .line 12
    .line 13
    invoke-static/range {v0 .. v5}, Lorg/vosk/android/StorageService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lorg/vosk/android/StorageService$Callback;Lorg/vosk/android/StorageService$Callback;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
