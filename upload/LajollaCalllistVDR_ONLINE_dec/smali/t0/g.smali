.class public final Lt0/g;
.super Lt0/f;
.source "SourceFile"

# interfaces
.implements Ls0/g;


# instance fields
.field public final c:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    invoke-direct {p0, p1}, Lt0/f;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    iput-object p1, p0, Lt0/g;->c:Landroid/database/sqlite/SQLiteStatement;

    return-void
.end method


# virtual methods
.method public final P()J
    .locals 2

    iget-object v0, p0, Lt0/g;->c:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public final Q()I
    .locals 1

    iget-object v0, p0, Lt0/g;->c:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v0

    return v0
.end method
