.class public final Lu0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt0/a;


# static fields
.field public static final b:[Ljava/lang/String;


# instance fields
.field public final a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lu0/b;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lu0/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-void
.end method

.method public final d()V
    .locals 0

    iget-object p0, p0, Lu0/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public final g()V
    .locals 0

    iget-object p0, p0, Lu0/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lu0/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final q(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    new-instance v0, Landroidx/appcompat/widget/d0;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/d0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lu0/b;->u(Lt0/f;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lt0/f;)Landroid/database/Cursor;
    .locals 3

    new-instance v0, Lu0/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lu0/a;-><init>(Lt0/f;I)V

    invoke-interface {p1}, Lt0/f;->g()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lu0/b;->b:[Ljava/lang/String;

    const/4 v2, 0x0

    iget-object p0, p0, Lu0/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public final v()V
    .locals 0

    iget-object p0, p0, Lu0/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method
