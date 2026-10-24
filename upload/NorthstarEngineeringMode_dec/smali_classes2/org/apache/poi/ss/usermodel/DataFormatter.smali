.class public Lorg/apache/poi/ss/usermodel/DataFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/usermodel/DataFormatter$CellFormatResultWrapper;,
        Lorg/apache/poi/ss/usermodel/DataFormatter$ConstantStringFormat;,
        Lorg/apache/poi/ss/usermodel/DataFormatter$PhoneFormat;,
        Lorg/apache/poi/ss/usermodel/DataFormatter$ZipPlusFourFormat;,
        Lorg/apache/poi/ss/usermodel/DataFormatter$SSNFormat;,
        Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;
    }
.end annotation


# static fields
.field private static final LOG:La5/d;

.field private static final alternateGrouping:Ljava/util/regex/Pattern;

.field private static final amPmPattern:Ljava/util/regex/Pattern;

.field private static final colorPattern:Ljava/util/regex/Pattern;

.field private static final daysAsText:Ljava/util/regex/Pattern;

.field private static final defaultFractionFractionPartFormat:Ljava/lang/String; = "#/##"

.field private static final defaultFractionWholePartFormat:Ljava/lang/String; = "#"

.field private static final fractionPattern:Ljava/util/regex/Pattern;

.field private static final fractionStripper:Ljava/util/regex/Pattern;

.field private static final invalidDateTimeString:Ljava/lang/String;

.field private static final localePatternGroup:Ljava/util/regex/Pattern;

.field private static final numPattern:Ljava/util/regex/Pattern;

.field private static final rangeConditionalPattern:Ljava/util/regex/Pattern;


# instance fields
.field private dateSymbols:Ljava/text/DateFormatSymbols;

.field private decimalSymbols:Ljava/text/DecimalFormatSymbols;

.field private defaultDateformat:Ljava/text/DateFormat;

.field private defaultNumFormat:Ljava/text/Format;

.field private emulateCSV:Z

.field private final formats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/text/Format;",
            ">;"
        }
    .end annotation
.end field

.field private generalNumberFormat:Ljava/text/Format;

.field private locale:Ljava/util/Locale;

.field private localeIsAdapting:Z

.field private final pcs:Ljava/beans/PropertyChangeSupport;

.field private use4DigitYearsInAllDateFormats:Z

.field private useCachedValuesForFormulaCells:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "[0#]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->numPattern:Ljava/util/regex/Pattern;

    const-string v0, "([d]{3,})"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->daysAsText:Ljava/util/regex/Pattern;

    const-string v0, "(([AP])[M/P]*)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->amPmPattern:Ljava/util/regex/Pattern;

    const-string v0, ".*\\[\\s*(>|>=|<|<=|=)\\s*[0-9]*\\.*[0-9].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->rangeConditionalPattern:Ljava/util/regex/Pattern;

    const-string v0, "(\\[\\$[^-\\]]*-[0-9A-Z]+])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localePatternGroup:Ljava/util/regex/Pattern;

    const-string v0, "(\\[BLACK])|(\\[BLUE])|(\\[CYAN])|(\\[GREEN])|(\\[MAGENTA])|(\\[RED])|(\\[WHITE])|(\\[YELLOW])|(\\[COLOR\\s*\\d])|(\\[COLOR\\s*[0-5]\\d])"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->colorPattern:Ljava/util/regex/Pattern;

    const-string v0, "(?:([#\\d]+)\\s+)?(#+)\\s*/\\s*([#\\d]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->fractionPattern:Ljava/util/regex/Pattern;

    const-string v0, "(\"[^\"]*\")|([^ ?#\\d/]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->fractionStripper:Ljava/util/regex/Pattern;

    const-string v0, "([#0]([^.#0])[#0]{3})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->alternateGrouping:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xff

    if-ge v1, v2, :cond_0

    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->invalidDateTimeString:Ljava/lang/String;

    const-class v0, Lorg/apache/poi/ss/usermodel/DataFormatter;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>(Ljava/util/Locale;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>(Ljava/util/Locale;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;ZZ)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->formats:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCSV:Z

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->use4DigitYearsInAllDateFormats:Z

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->useCachedValuesForFormulaCells:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localeIsAdapting:Z

    .line 7
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->pcs:Ljava/beans/PropertyChangeSupport;

    .line 8
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->checkForLocaleChange(Ljava/util/Locale;)V

    iput-boolean p2, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localeIsAdapting:Z

    iput-boolean p3, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCSV:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 2
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;-><init>(Ljava/util/Locale;ZZ)V

    return-void
.end method

.method public static synthetic access$100(Ljava/lang/String;)Ljava/text/DecimalFormat;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->createIntegerOnlyFormat(Ljava/lang/String;)Ljava/text/DecimalFormat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/poi/ss/usermodel/DataFormatter;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCSV:Z

    return p0
.end method

.method private checkForLocaleChange()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->checkForLocaleChange(Ljava/util/Locale;)V

    return-void
.end method

.method private checkForLocaleChange(Ljava/util/Locale;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localeIsAdapting:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->locale:Ljava/util/Locale;

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->updateLocale(Ljava/util/Locale;)V

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->pcs:Ljava/beans/PropertyChangeSupport;

    const-string v1, "locale"

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->locale:Ljava/util/Locale;

    .line 4
    invoke-virtual {v0, v1, p0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private cleanFormatForNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "\\%"

    const-string v1, "\'%\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCSV:Z

    const/16 p1, 0x2a

    const/16 v1, 0x5c

    const/16 v2, 0x5f

    const/4 v3, 0x0

    if-eqz p0, :cond_5

    move p0, v3

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge p0, v4, :cond_a

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x3f

    if-eq v4, v2, :cond_0

    if-eq v4, p1, :cond_0

    if-ne v4, v5, :cond_4

    :cond_0
    if-lez p0, :cond_1

    add-int/lit8 v6, p0, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v1, :cond_1

    goto :goto_2

    :cond_1
    const/16 v6, 0x20

    if-ne v4, v5, :cond_2

    invoke-virtual {v0, p0, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge p0, v5, :cond_4

    if-ne v4, v2, :cond_3

    add-int/lit8 v4, p0, 0x1

    invoke-virtual {v0, v4, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    :cond_3
    add-int/lit8 v4, p0, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, -0x1

    :cond_4
    :goto_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_5
    move p0, v3

    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge p0, v4, :cond_a

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_6

    if-ne v4, p1, :cond_9

    :cond_6
    if-lez p0, :cond_7

    add-int/lit8 v4, p0, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge p0, v4, :cond_8

    add-int/lit8 v4, p0, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, -0x1

    :cond_9
    :goto_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_a
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ge v3, p0, :cond_f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    if-eq p0, v1, :cond_d

    const/16 p1, 0x22

    if-ne p0, p1, :cond_b

    goto :goto_7

    :cond_b
    const/16 p1, 0x2b

    if-eq p0, p1, :cond_c

    const/16 p1, 0x2d

    if-ne p0, p1, :cond_e

    :cond_c
    if-lez v3, :cond_e

    add-int/lit8 p0, v3, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const/16 p1, 0x45

    if-ne p0, p1, :cond_e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :goto_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    :cond_d
    :goto_7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_e
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createDateFormat(Ljava/lang/String;D)Ljava/text/Format;
    .locals 16

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->adjustTo4DigitYearsIfConfigured(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\-"

    const-string v3, "-"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\,"

    const-string v3, ","

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\."

    const-string v3, "."

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\ "

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\/"

    const-string v3, "/"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ";@"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\"/\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\"\""

    const-string v3, "\'"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\T"

    const-string v3, "\'T\'"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/apache/poi/ss/usermodel/DataFormatter;->amPmPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v0, "@"

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/apache/poi/ss/usermodel/DataFormatter;->amPmPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x40

    const/16 v5, 0x61

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/apache/poi/ss/usermodel/DataFormatter;->daysAsText:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    const/16 v7, 0x44

    if-eqz v5, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x45

    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v8, v3

    move v9, v8

    const/4 v10, 0x1

    :goto_1
    array-length v11, v0

    if-ge v8, v11, :cond_1e

    aget-char v11, v0, v8

    const/16 v12, 0x27

    if-ne v11, v12, :cond_4

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v8, v8, 0x1

    array-length v11, v0

    if-ge v8, v11, :cond_3

    aget-char v11, v0, v8

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v11, v12, :cond_2

    :cond_3
    :goto_2
    const/4 v3, 0x1

    goto/16 :goto_e

    :cond_4
    const/16 v12, 0x5b

    if-ne v11, v12, :cond_5

    if-nez v9, :cond_5

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v10, v3

    const/4 v3, 0x1

    const/4 v9, 0x1

    goto/16 :goto_e

    :cond_5
    const/16 v12, 0x5d

    if-ne v11, v12, :cond_6

    if-eqz v9, :cond_6

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v9, v3

    goto :goto_2

    :cond_6
    const/16 v12, 0x53

    const/16 v13, 0x68

    const/16 v14, 0x73

    const/16 v15, 0x4d

    const/16 v3, 0x6d

    const/16 v6, 0x48

    if-eqz v9, :cond_d

    if-eq v11, v13, :cond_c

    if-ne v11, v6, :cond_7

    goto :goto_5

    :cond_7
    if-eq v11, v3, :cond_b

    if-ne v11, v15, :cond_8

    goto :goto_4

    :cond_8
    if-eq v11, v14, :cond_a

    if-ne v11, v12, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_a
    :goto_3
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_b
    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_c
    :goto_5
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_d
    if-eq v11, v13, :cond_1c

    if-ne v11, v6, :cond_e

    goto/16 :goto_c

    :cond_e
    if-eq v11, v3, :cond_1a

    if-ne v11, v15, :cond_f

    goto/16 :goto_b

    :cond_f
    if-eq v11, v14, :cond_17

    if-ne v11, v12, :cond_10

    goto :goto_9

    :cond_10
    invoke-static {v11}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/16 v3, 0x79

    if-eq v11, v3, :cond_14

    const/16 v6, 0x59

    if-ne v11, v6, :cond_11

    goto :goto_7

    :cond_11
    const/16 v3, 0x64

    if-eq v11, v3, :cond_13

    if-ne v11, v7, :cond_12

    goto :goto_6

    :cond_12
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_13
    :goto_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_14
    :goto_7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_8
    const/4 v3, 0x1

    const/4 v10, 0x1

    goto :goto_e

    :cond_15
    invoke-static {v11}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :cond_16
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_17
    :goto_9
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    if-ne v10, v15, :cond_18

    add-int/lit8 v10, v6, 0x1

    const-string v11, "m"

    invoke-virtual {v2, v6, v10, v11}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_19
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_8

    :cond_1a
    :goto_b
    if-eqz v10, :cond_1b

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_1c
    :goto_c
    if-eqz v4, :cond_1d

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_1d
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_d
    const/4 v3, 0x1

    const/4 v10, 0x0

    :goto_e
    add-int/2addr v8, v3

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;

    iget-object v3, v1, Lorg/apache/poi/ss/usermodel/DataFormatter;->dateSymbols:Ljava/text/DateFormatSymbols;

    invoke-direct {v0, v2, v3}, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v3, Lorg/apache/poi/ss/usermodel/DataFormatter;->LOG:La5/d;

    invoke-interface {v3}, La5/d;->e()La5/b;

    move-result-object v3

    invoke-interface {v3, v0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v0

    const-string v3, "Formatting failed for format {}, falling back"

    invoke-interface {v0, v2, v3}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-wide/from16 v2, p2

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getDefaultFormat(D)Ljava/text/Format;

    move-result-object v0

    return-object v0
.end method

.method private createFormat(DILjava/lang/String;)Ljava/text/Format;
    .locals 8

    .line 4
    invoke-direct {p0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->checkForLocaleChange()V

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_2

    sget-object v2, Lorg/apache/poi/ss/usermodel/DataFormatter;->colorPattern:Ljava/util/regex/Pattern;

    .line 5
    invoke-virtual {v2, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 6
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {p4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object p4, Lorg/apache/poi/ss/usermodel/DataFormatter;->colorPattern:Ljava/util/regex/Pattern;

    .line 12
    invoke-virtual {p4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p4

    move-object v7, v2

    move-object v2, p4

    move-object p4, v7

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v2, 0x1

    if-eqz p4, :cond_4

    sget-object v3, Lorg/apache/poi/ss/usermodel/DataFormatter;->localePatternGroup:Ljava/util/regex/Pattern;

    .line 13
    invoke-virtual {v3, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 14
    :goto_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 15
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p4

    const/16 v4, 0x24

    .line 16
    invoke-virtual {p4, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v5, v2

    const/16 v6, 0x2d

    invoke-virtual {p4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {p4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    .line 17
    invoke-virtual {p4, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-le v5, v0, :cond_3

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {p4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x5c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p4, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {p4, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 20
    :cond_3
    invoke-virtual {v3, p4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    sget-object v3, Lorg/apache/poi/ss/usermodel/DataFormatter;->localePatternGroup:Ljava/util/regex/Pattern;

    .line 21
    invoke-virtual {v3, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    goto :goto_2

    .line 22
    :cond_4
    invoke-static {p4}, Lorg/apache/poi/util/StringUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getDefaultFormat(D)Ljava/text/Format;

    move-result-object p0

    return-object p0

    :cond_5
    const-string v0, "General"

    .line 24
    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "@"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_5

    :cond_6
    const/4 v0, 0x0

    if-nez p4, :cond_7

    return-object v0

    .line 25
    :cond_7
    invoke-static {p3, p4}, Lorg/apache/poi/ss/usermodel/DateUtil;->isADateFormat(ILjava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 26
    invoke-static {p1, p2}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 27
    invoke-direct {p0, p4, p1, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->createDateFormat(Ljava/lang/String;D)Ljava/text/Format;

    move-result-object p0

    return-object p0

    :cond_8
    const-string p3, "#/"

    .line 28
    invoke-virtual {p4, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_c

    const-string p3, "?/"

    invoke-virtual {p4, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_9

    goto :goto_3

    :cond_9
    sget-object p3, Lorg/apache/poi/ss/usermodel/DataFormatter;->numPattern:Ljava/util/regex/Pattern;

    .line 29
    invoke-virtual {p3, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 30
    invoke-direct {p0, p4, p1, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->createNumberFormat(Ljava/lang/String;D)Ljava/text/Format;

    move-result-object p0

    return-object p0

    :cond_a
    iget-boolean p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCSV:Z

    if-eqz p1, :cond_b

    .line 31
    new-instance p1, Lorg/apache/poi/ss/usermodel/DataFormatter$ConstantStringFormat;

    invoke-direct {p0, p4}, Lorg/apache/poi/ss/usermodel/DataFormatter;->cleanFormatForNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/poi/ss/usermodel/DataFormatter$ConstantStringFormat;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_b
    return-object v0

    :cond_c
    :goto_3
    const-string p0, ";"

    .line 32
    invoke-virtual {p4, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 33
    array-length p1, p0

    :goto_4
    const-string p2, "#"

    if-ge v1, p1, :cond_f

    aget-object p3, p0, v1

    const-string p4, "?"

    .line 34
    invoke-virtual {p3, p4, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    sget-object p4, Lorg/apache/poi/ss/usermodel/DataFormatter;->fractionStripper:Ljava/util/regex/Pattern;

    .line 35
    invoke-virtual {p4, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    const-string p4, " "

    .line 36
    invoke-virtual {p3, p4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, " +"

    .line 37
    invoke-virtual {p3, v0, p4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    sget-object p4, Lorg/apache/poi/ss/usermodel/DataFormatter;->fractionPattern:Ljava/util/regex/Pattern;

    .line 38
    invoke-virtual {p4, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    .line 39
    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result p4

    if-eqz p4, :cond_e

    .line 40
    invoke-virtual {p3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_d

    const-string p2, ""

    .line 41
    :cond_d
    new-instance p0, Lorg/apache/poi/ss/usermodel/FractionFormat;

    const/4 p1, 0x3

    invoke-virtual {p3, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/apache/poi/ss/usermodel/FractionFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 42
    :cond_f
    new-instance p0, Lorg/apache/poi/ss/usermodel/FractionFormat;

    const-string p1, "#/##"

    invoke-direct {p0, p2, p1}, Lorg/apache/poi/ss/usermodel/FractionFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_10
    :goto_5
    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalNumberFormat:Ljava/text/Format;

    return-object p0
.end method

.method private static createIntegerOnlyFormat(Ljava/lang/String;)Ljava/text/DecimalFormat;
    .locals 2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1, p0, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Ljava/text/DecimalFormat;->setParseIntegerOnly(Z)V

    return-object v1
.end method

.method private createNumberFormat(Ljava/lang/String;D)Ljava/text/Format;
    .locals 6

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->cleanFormatForNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->decimalSymbols:Ljava/text/DecimalFormatSymbols;

    sget-object v2, Lorg/apache/poi/ss/usermodel/DataFormatter;->alternateGrouping:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_0

    iget-object v1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->locale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :try_start_0
    new-instance v2, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter$InternalDecimalFormatWithScale;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/DataFormatter;->LOG:La5/d;

    invoke-interface {v1}, La5/d;->e()La5/b;

    move-result-object v1

    invoke-interface {v1, v0}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object v0

    const-string v1, "Formatting failed for format {}, falling back"

    invoke-interface {v0, p1, v1}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getDefaultFormat(D)Ljava/text/Format;

    move-result-object p0

    return-object p0
.end method

.method private getDefaultFormat(D)Ljava/text/Format;
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->checkForLocaleChange()V

    iget-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->defaultNumFormat:Ljava/text/Format;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalNumberFormat:Ljava/text/Format;

    return-object p0
.end method

.method private getFormat(DILjava/lang/String;Z)Ljava/text/Format;
    .locals 4

    if-eqz p4, :cond_7

    .line 6
    invoke-direct {p0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->checkForLocaleChange()V

    const-string v0, "\\%"

    const-string v1, "\'%\'"

    .line 7
    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    const-string v0, ";"

    .line 8
    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0x3b

    .line 9
    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p4, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ne v3, v0, :cond_0

    sget-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->rangeConditionalPattern:Ljava/util/regex/Pattern;

    .line 10
    invoke-virtual {v0, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->locale:Ljava/util/Locale;

    .line 11
    invoke-static {v0, p4}, Lorg/apache/poi/ss/format/CellFormat;->getInstance(Ljava/util/Locale;Ljava/lang/String;)Lorg/apache/poi/ss/format/CellFormat;

    move-result-object v0

    cmpl-double v3, p1, v1

    if-eqz v3, :cond_1

    .line 12
    invoke-static {p3, p4}, Lorg/apache/poi/ss/usermodel/DateUtil;->isADateFormat(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13
    invoke-static {p1, p2, p5}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object p5

    goto :goto_0

    :catch_0
    move-exception p5

    goto :goto_1

    .line 14
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p5

    .line 15
    :goto_0
    new-instance v3, Lorg/apache/poi/ss/usermodel/DataFormatter$CellFormatResultWrapper;

    invoke-virtual {v0, p5}, Lorg/apache/poi/ss/format/CellFormat;->apply(Ljava/lang/Object;)Lorg/apache/poi/ss/format/CellFormatResult;

    move-result-object p5

    const/4 v0, 0x0

    invoke-direct {v3, p0, p5, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter$CellFormatResultWrapper;-><init>(Lorg/apache/poi/ss/usermodel/DataFormatter;Lorg/apache/poi/ss/format/CellFormatResult;Lorg/apache/poi/ss/usermodel/DataFormatter$1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :goto_1
    sget-object v0, Lorg/apache/poi/ss/usermodel/DataFormatter;->LOG:La5/d;

    .line 16
    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    invoke-interface {v0, p5}, La5/b;->b(Ljava/lang/Throwable;)La5/b;

    move-result-object p5

    const-string v0, "Formatting failed for format {}, falling back"

    invoke-interface {p5, p4, v0}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    iget-boolean p5, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCSV:Z

    if-eqz p5, :cond_3

    cmpl-double p5, p1, v1

    if-nez p5, :cond_3

    const-string p5, "#"

    .line 17
    invoke-virtual {p4, p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "0"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ""

    .line 18
    invoke-virtual {p4, p5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    :cond_3
    iget-object p5, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->formats:Ljava/util/Map;

    .line 19
    invoke-interface {p5, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/text/Format;

    if-eqz p5, :cond_4

    return-object p5

    :cond_4
    const-string p5, "General"

    .line 20
    invoke-virtual {p5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_6

    const-string p5, "@"

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_5

    goto :goto_2

    .line 21
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/usermodel/DataFormatter;->createFormat(DILjava/lang/String;)Ljava/text/Format;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->formats:Ljava/util/Map;

    .line 22
    invoke-interface {p0, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_6
    :goto_2
    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalNumberFormat:Ljava/text/Format;

    return-object p0

    .line 23
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Missing input format for value "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " and index "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getFormat(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Ljava/text/Format;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;->from(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;

    move-result-object p2

    if-nez p2, :cond_1

    return-object v0

    .line 2
    :cond_1
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;->getIdx()I

    move-result v4

    .line 3
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/ExcelNumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-static {v5}, Lorg/apache/poi/util/StringUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object v0

    .line 5
    :cond_2
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v2

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->isDate1904(Lorg/apache/poi/ss/usermodel/Cell;)Z

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormat(DILjava/lang/String;Z)Ljava/text/Format;

    move-result-object p0

    return-object p0
.end method

.method private getFormattedDateString(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormat(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Ljava/text/Format;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->defaultDateformat:Ljava/text/DateFormat;

    if-nez p2, :cond_1

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserLocale()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object p2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE MMM dd HH:mm:ss zzz yyyy"

    invoke-direct {v0, v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserTimeZone()Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    move-object p2, v0

    :cond_1
    monitor-enter p2

    :try_start_0
    instance-of v0, p2, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->setDateToBeFormatted(D)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getDateCellValue()Ljava/util/Date;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->performDateFormatting(Ljava/util/Date;Ljava/text/Format;)Ljava/lang/String;

    move-result-object p0

    monitor-exit p2

    return-object p0

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getFormattedNumberString(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormat(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Ljava/text/Format;

    move-result-object p0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide p1

    if-nez p0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :try_start_0
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, "E(\\d)"

    const-string p2, "E+$1"

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isDate1904(Lorg/apache/poi/ss/usermodel/Cell;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    instance-of p0, p0, Lorg/apache/poi/ss/usermodel/Date1904Support;

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/Date1904Support;

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Date1904Support;->isDate1904()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private performDateFormatting(Ljava/util/Date;Ljava/text/Format;)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->defaultDateformat:Ljava/text/DateFormat;

    :goto_0
    monitor-enter p2

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    monitor-exit p2

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setExcelStyleRoundingMode(Ljava/text/DecimalFormat;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-static {p0, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->setExcelStyleRoundingMode(Ljava/text/DecimalFormat;Ljava/math/RoundingMode;)V

    return-void
.end method

.method public static setExcelStyleRoundingMode(Ljava/text/DecimalFormat;Ljava/math/RoundingMode;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    return-void
.end method


# virtual methods
.method public addFormat(Ljava/lang/String;Ljava/text/Format;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->formats:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public adjustTo4DigitYearsIfConfigured(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->use4DigitYearsInAllDateFormats:Z

    if-eqz v0, :cond_3

    const-string v0, "yy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    return-object p1

    :cond_0
    const-string v2, "yyy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "yyyy"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v1, :cond_1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Landroidx/activity/result/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->adjustTo4DigitYearsIfConfigured(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne v2, v1, :cond_2

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v0}, Landroidx/activity/result/a;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->adjustTo4DigitYearsIfConfigured(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p1
.end method

.method public createFormat(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/text/Format;
    .locals 4

    .line 1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormat()S

    move-result v0

    .line 2
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellStyle()Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getDataFormatString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->createFormat(DILjava/lang/String;)Ljava/text/Format;

    move-result-object p0

    return-object p0
.end method

.method public formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public formatCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Ljava/lang/String;
    .locals 3

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->checkForLocaleChange()V

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    .line 5
    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v1, v2, :cond_3

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->useCachedValuesForFormulaCells:Z

    if-eqz p2, :cond_1

    .line 6
    :try_start_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultType()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellFormula()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellFormula()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_2
    invoke-interface {p2, p1}, Lorg/apache/poi/ss/usermodel/FormulaEvaluator;->evaluateFormulaCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    .line 10
    :cond_3
    :goto_0
    sget-object p2, Lorg/apache/poi/ss/usermodel/DataFormatter$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p2, p2, v2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_9

    const/4 p0, 0x2

    if-eq p2, p0, :cond_8

    const/4 p0, 0x3

    if-eq p2, p0, :cond_6

    const/4 p0, 0x4

    if-eq p2, p0, :cond_5

    const/4 p0, 0x5

    if-ne p2, p0, :cond_4

    .line 11
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getErrorCellValue()B

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->forInt(B)Lorg/apache/poi/ss/usermodel/FormulaError;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unexpected celltype ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-object v0

    .line 13
    :cond_6
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "TRUE"

    goto :goto_1

    :cond_7
    const-string p0, "FALSE"

    :goto_1
    return-object p0

    .line 14
    :cond_8
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :cond_9
    invoke-static {p1, p3}, Lorg/apache/poi/ss/usermodel/DateUtil;->isCellDateFormatted(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 16
    invoke-direct {p0, p1, p3}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormattedDateString(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 17
    :cond_a
    invoke-direct {p0, p1, p3}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormattedNumberString(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public formatRawCellContents(DILjava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/ss/usermodel/DataFormatter;->formatRawCellContents(DILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public formatRawCellContents(DILjava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/ss/usermodel/DataFormatter;->checkForLocaleChange()V

    .line 3
    invoke-static {p3, p4}, Lorg/apache/poi/ss/usermodel/DateUtil;->isADateFormat(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {p1, p2}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct/range {p0 .. p5}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormat(DILjava/lang/String;Z)Ljava/text/Format;

    move-result-object p3

    .line 6
    instance-of p4, p3, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;

    if-eqz p4, :cond_0

    .line 7
    move-object p4, p3

    check-cast p4, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;

    invoke-virtual {p4, p1, p2}, Lorg/apache/poi/ss/usermodel/ExcelStyleDateFormatter;->setDateToBeFormatted(D)V

    .line 8
    :cond_0
    invoke-static {p1, p2, p5}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object p1

    .line 9
    invoke-direct {p0, p1, p3}, Lorg/apache/poi/ss/usermodel/DataFormatter;->performDateFormatting(Ljava/util/Date;Ljava/text/Format;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCSV:Z

    if-eqz v0, :cond_2

    sget-object p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->invalidDateTimeString:Ljava/lang/String;

    return-object p0

    .line 10
    :cond_2
    invoke-direct/range {p0 .. p5}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getFormat(DILjava/lang/String;Z)Ljava/text/Format;

    move-result-object p0

    if-nez p0, :cond_3

    .line 11
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_3
    invoke-static {p1, p2}, Lorg/apache/poi/ss/util/NumberToTextConverter;->toText(D)Ljava/lang/String;

    move-result-object p3

    const/16 p5, 0x45

    .line 13
    invoke-virtual {p3, p5}, Ljava/lang/String;->indexOf(I)I

    move-result p5

    const/4 v0, -0x1

    if-le p5, v0, :cond_4

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 15
    :cond_4
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 16
    :goto_0
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p4, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "general"

    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "e+0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const-string p1, "E"

    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "E-"

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "E+"

    .line 19
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method public getDefaultFormat(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/text/Format;
    .locals 2

    .line 1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->getDefaultFormat(D)Ljava/text/Format;

    move-result-object p0

    return-object p0
.end method

.method public getLocaleChangedObservable()Ljava/beans/PropertyChangeSupport;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->pcs:Ljava/beans/PropertyChangeSupport;

    return-object p0
.end method

.method public isEmulateCSV()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCSV:Z

    return p0
.end method

.method public setDefaultNumberFormat(Ljava/text/Format;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->formats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalNumberFormat:Ljava/text/Format;

    if-ne v2, v3, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->defaultNumFormat:Ljava/text/Format;

    return-void
.end method

.method public setEmulateCSV(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->emulateCSV:Z

    return-void
.end method

.method public setUse4DigitYearsInAllDateFormats(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->use4DigitYearsInAllDateFormats:Z

    return-void
.end method

.method public setUseCachedValuesForFormulaCells(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->useCachedValuesForFormulaCells:Z

    return-void
.end method

.method public updateLocale(Ljava/util/Locale;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->localeIsAdapting:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->locale:Ljava/util/Locale;

    invoke-static {p1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->dateSymbols:Ljava/text/DateFormatSymbols;

    iget-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->locale:Ljava/util/Locale;

    invoke-static {p1}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->decimalSymbols:Ljava/text/DecimalFormatSymbols;

    new-instance p1, Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->locale:Ljava/util/Locale;

    invoke-direct {p1, v0}, Lorg/apache/poi/ss/usermodel/ExcelGeneralNumberFormat;-><init>(Ljava/util/Locale;)V

    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->generalNumberFormat:Ljava/text/Format;

    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "EEE MMM dd HH:mm:ss zzz yyyy"

    iget-object v1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->dateSymbols:Ljava/text/DateFormatSymbols;

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V

    iput-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->defaultDateformat:Ljava/text/DateFormat;

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getUserTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object p1, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->formats:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    sget-object p1, Lorg/apache/poi/ss/usermodel/DataFormatter$ZipPlusFourFormat;->instance:Ljava/text/Format;

    const-string v0, "00000\\-0000"

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    const-string v0, "00000-0000"

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    sget-object p1, Lorg/apache/poi/ss/usermodel/DataFormatter$PhoneFormat;->instance:Ljava/text/Format;

    const-string v0, "[<=9999999]###\\-####;\\(###\\)\\ ###\\-####"

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    const-string v0, "[<=9999999]###-####;(###) ###-####"

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    const-string v0, "###\\-####;\\(###\\)\\ ###\\-####"

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    const-string v0, "###-####;(###) ###-####"

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    sget-object p1, Lorg/apache/poi/ss/usermodel/DataFormatter$SSNFormat;->instance:Ljava/text/Format;

    const-string v0, "000\\-00\\-0000"

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    const-string v0, "000-00-0000"

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/ss/usermodel/DataFormatter;->addFormat(Ljava/lang/String;Ljava/text/Format;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public use4DigitYearsInAllDateFormats()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->use4DigitYearsInAllDateFormats:Z

    return p0
.end method

.method public useCachedValuesForFormulaCells()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/ss/usermodel/DataFormatter;->useCachedValuesForFormulaCells:Z

    return p0
.end method
