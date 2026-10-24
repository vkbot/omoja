.class public abstract Lk0/j;
.super Lk0/c;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 13

    invoke-direct {p0}, Lk0/c;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lk0/j;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lk0/j;->c:Z

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    const/16 v1, 0x39

    if-le v0, v1, :cond_2

    :cond_0
    const/16 v1, 0x2e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_2

    const/16 v2, 0x28

    if-eq v0, v2, :cond_2

    const/16 v3, 0x29

    if-eq v0, v3, :cond_2

    const/16 v4, 0x5e

    if-eq v0, v4, :cond_2

    const/16 v5, 0x2a

    if-eq v0, v5, :cond_2

    const/16 v6, 0x2f

    if-eq v0, v6, :cond_2

    const/16 v7, 0x2b

    if-eq v0, v7, :cond_2

    const/16 v8, 0x2d

    if-eq v0, v8, :cond_2

    const/16 v9, 0x20

    if-eq v0, v9, :cond_2

    const/16 v10, 0x9

    if-eq v0, v10, :cond_2

    const/16 v11, 0xa

    if-eq v0, v11, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v0, v12, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v1, :cond_2

    if-eq v12, v2, :cond_2

    if-eq v12, v3, :cond_2

    if-eq v12, v4, :cond_2

    if-eq v12, v5, :cond_2

    if-eq v12, v6, :cond_2

    if-eq v12, v7, :cond_2

    if-eq v12, v8, :cond_2

    if-eq v12, v9, :cond_2

    if-eq v12, v10, :cond_2

    if-eq v12, v11, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lk0/j;->b:Ljava/lang/String;

    iput-boolean p2, p0, Lk0/j;->c:Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid name: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "name cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
