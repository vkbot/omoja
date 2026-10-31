.class public final Lo7/j4;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final d:Ljava/util/logging/Logger;


# instance fields
.field public b:Z

.field public c:Ljava/util/ArrayDeque;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lo7/j4;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lo7/j4;->d:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    .line 1
    :goto_0
    iget-object v0, p0, Lo7/j4;->c:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Runnable;

    .line 8
    .line 9
    if-eqz v0, :cond_25

    .line 10
    .line 11
    :try_start_a
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_e

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_e
    move-exception v1

    .line 16
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 17
    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v4, "Exception while executing runnable "

    .line 21
    .line 22
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget-object v3, Lo7/j4;->d:Ljava/util/logging/Logger;

    .line 33
    .line 34
    invoke-virtual {v3, v2, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_25
    return-void
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .registers 8

    .line 1
    const-string v0, "Exception while executing runnable "

    .line 2
    .line 3
    const-string v1, "\'task\' must not be null."

    .line 4
    .line 5
    invoke-static {p1, v1}, Lo4/b;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lo7/j4;->b:Z

    .line 9
    .line 10
    if-nez v1, :cond_45

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lo7/j4;->b:Z

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :try_start_f
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_1c

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lo7/j4;->c:Ljava/util/ArrayDeque;

    .line 20
    .line 21
    if-eqz p1, :cond_19

    .line 22
    .line 23
    invoke-virtual {p0}, Lo7/j4;->a()V

    .line 24
    .line 25
    .line 26
    :cond_19
    iput-boolean v1, p0, Lo7/j4;->b:Z

    .line 27
    .line 28
    return-void

    .line 29
    :catchall_1c
    move-exception v2

    .line 30
    :try_start_1d
    sget-object v3, Lo7/j4;->d:Ljava/util/logging/Logger;

    .line 31
    .line 32
    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 33
    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v3, v4, p1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_30
    .catchall {:try_start_1d .. :try_end_30} :catchall_3a

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lo7/j4;->c:Ljava/util/ArrayDeque;

    .line 50
    .line 51
    if-eqz p1, :cond_37

    .line 52
    .line 53
    invoke-virtual {p0}, Lo7/j4;->a()V

    .line 54
    .line 55
    .line 56
    :cond_37
    iput-boolean v1, p0, Lo7/j4;->b:Z

    .line 57
    .line 58
    return-void

    .line 59
    :catchall_3a
    move-exception p1

    .line 60
    iget-object v0, p0, Lo7/j4;->c:Ljava/util/ArrayDeque;

    .line 61
    .line 62
    if-eqz v0, :cond_42

    .line 63
    .line 64
    invoke-virtual {p0}, Lo7/j4;->a()V

    .line 65
    .line 66
    .line 67
    :cond_42
    iput-boolean v1, p0, Lo7/j4;->b:Z

    .line 68
    .line 69
    throw p1

    .line 70
    :cond_45
    iget-object v0, p0, Lo7/j4;->c:Ljava/util/ArrayDeque;

    .line 71
    .line 72
    if-nez v0, :cond_51

    .line 73
    .line 74
    new-instance v0, Ljava/util/ArrayDeque;

    .line 75
    .line 76
    const/4 v1, 0x4

    .line 77
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lo7/j4;->c:Ljava/util/ArrayDeque;

    .line 81
    .line 82
    :cond_51
    iget-object v0, p0, Lo7/j4;->c:Ljava/util/ArrayDeque;

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    return-void
.end method
