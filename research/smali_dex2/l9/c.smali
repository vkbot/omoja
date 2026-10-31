.class public final Ll9/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# direct methods
.method public static a()Ll9/g;
    .registers 7

    .line 1
    # getter for: Ll9/g;->head:Ll9/g;
    invoke-static {}, Ll9/g;->access$getHead$cp()Ll9/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    # getter for: Ll9/g;->next:Ll9/g;
    invoke-static {v0}, Ll9/g;->access$getNext$p(Ll9/g;)Ll9/g;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_3f

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    # getter for: Ll9/g;->condition:Ljava/util/concurrent/locks/Condition;
    invoke-static {}, Ll9/g;->access$getCondition$cp()Ljava/util/concurrent/locks/Condition;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    # getter for: Ll9/g;->IDLE_TIMEOUT_MILLIS:J
    invoke-static {}, Ll9/g;->access$getIDLE_TIMEOUT_MILLIS$cp()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28
    .line 29
    invoke-interface {v0, v4, v5, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 30
    .line 31
    .line 32
    # getter for: Ll9/g;->head:Ll9/g;
    invoke-static {}, Ll9/g;->access$getHead$cp()Ll9/g;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    # getter for: Ll9/g;->next:Ll9/g;
    invoke-static {v0}, Ll9/g;->access$getNext$p(Ll9/g;)Ll9/g;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-nez v0, :cond_3e

    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    sub-long/2addr v4, v2

    .line 50
    # getter for: Ll9/g;->IDLE_TIMEOUT_NANOS:J
    invoke-static {}, Ll9/g;->access$getIDLE_TIMEOUT_NANOS$cp()J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    cmp-long v0, v4, v2

    .line 55
    .line 56
    if-ltz v0, :cond_3e

    .line 57
    .line 58
    # getter for: Ll9/g;->head:Ll9/g;
    invoke-static {}, Ll9/g;->access$getHead$cp()Ll9/g;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0

    .line 63
    :cond_3e
    return-object v1

    .line 64
    :cond_3f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 65
    .line 66
    .line 67
    move-result-wide v2

    .line 68
    invoke-static {v0, v2, v3}, Ll9/g;->access$remainingNanos(Ll9/g;J)J

    .line 69
    .line 70
    .line 71
    move-result-wide v2

    .line 72
    const-wide/16 v4, 0x0

    .line 73
    .line 74
    cmp-long v4, v2, v4

    .line 75
    .line 76
    if-lez v4, :cond_57

    .line 77
    .line 78
    # getter for: Ll9/g;->condition:Ljava/util/concurrent/locks/Condition;
    invoke-static {}, Ll9/g;->access$getCondition$cp()Ljava/util/concurrent/locks/Condition;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 83
    .line 84
    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 85
    .line 86
    .line 87
    return-object v1

    .line 88
    :cond_57
    # getter for: Ll9/g;->head:Ll9/g;
    invoke-static {}, Ll9/g;->access$getHead$cp()Ll9/g;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    # getter for: Ll9/g;->next:Ll9/g;
    invoke-static {v0}, Ll9/g;->access$getNext$p(Ll9/g;)Ll9/g;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-static {v2, v3}, Ll9/g;->access$setNext$p(Ll9/g;Ll9/g;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v1}, Ll9/g;->access$setNext$p(Ll9/g;Ll9/g;)V

    .line 103
    .line 104
    .line 105
    return-object v0
.end method
