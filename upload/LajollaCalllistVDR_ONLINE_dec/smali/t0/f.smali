.class public Lt0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final b:Landroid/database/sqlite/SQLiteProgram;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteProgram;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0/f;->b:Landroid/database/sqlite/SQLiteProgram;

    return-void
.end method


# virtual methods
.method public final J(DI)V
    .locals 1

    iget-object v0, p0, Lt0/f;->b:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, p3, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    return-void
.end method

.method public final M(IJ)V
    .locals 1

    iget-object v0, p0, Lt0/f;->b:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public final N(I)V
    .locals 1

    iget-object v0, p0, Lt0/f;->b:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    return-void
.end method

.method public final O(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lt0/f;->b:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lt0/f;->b:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-void
.end method

.method public final z([BI)V
    .locals 1

    iget-object v0, p0, Lt0/f;->b:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, p2, p1}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    return-void
.end method
