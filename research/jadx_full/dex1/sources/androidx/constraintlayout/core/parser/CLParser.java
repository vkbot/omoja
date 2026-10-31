package androidx.constraintlayout.core.parser;

import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CLParser {
    static boolean sDebug = false;
    private String mContent;
    private boolean mHasComment = false;
    private int mLineNumber;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CLParser(String str) {
        this.mContent = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private CLElement createElement(CLElement cLElement, int i9, CLParser$TYPE cLParser$TYPE, boolean z8, char[] cArr) {
        CLElement cLElementAllocate;
        if (sDebug) {
            System.out.println("CREATE " + cLParser$TYPE + " at " + cArr[i9]);
        }
        switch (cLParser$TYPE.ordinal()) {
            case 1:
                cLElementAllocate = CLObject.allocate(cArr);
                i9++;
                break;
            case 2:
                cLElementAllocate = CLArray.allocate(cArr);
                i9++;
                break;
            case 3:
                cLElementAllocate = CLNumber.allocate(cArr);
                break;
            case 4:
                cLElementAllocate = CLString.allocate(cArr);
                break;
            case 5:
                cLElementAllocate = CLKey.allocate(cArr);
                break;
            case 6:
                cLElementAllocate = CLToken.allocate(cArr);
                break;
            default:
                cLElementAllocate = null;
                break;
        }
        if (cLElementAllocate == null) {
            return null;
        }
        cLElementAllocate.setLine(this.mLineNumber);
        if (z8) {
            cLElementAllocate.setStart(i9);
        }
        if (cLElement instanceof CLContainer) {
            cLElementAllocate.setContainer((CLContainer) cLElement);
        }
        return cLElementAllocate;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private CLElement getNextJsonElement(int i9, char c, CLElement cLElement, char[] cArr) throws CLParsingException {
        if (c != '\t' && c != '\n' && c != '\r' && c != ' ') {
            if (c == '\"' || c == '\'') {
                return cLElement instanceof CLObject ? createElement(cLElement, i9, CLParser$TYPE.KEY, true, cArr) : createElement(cLElement, i9, CLParser$TYPE.STRING, true, cArr);
            }
            if (c == '[') {
                return createElement(cLElement, i9, CLParser$TYPE.ARRAY, true, cArr);
            }
            if (c != ']') {
                if (c == '{') {
                    return createElement(cLElement, i9, CLParser$TYPE.OBJECT, true, cArr);
                }
                if (c != '}') {
                    switch (c) {
                        case '+':
                        case '-':
                        case '.':
                        case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
                        case ConstraintLayout$LayoutParams$Table.LAYOUT_EDITOR_ABSOLUTEX /* 49 */:
                        case '2':
                        case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                        case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_BASELINE_TO_TOP_OF /* 52 */:
                        case ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                        case ConstraintLayout$LayoutParams$Table.LAYOUT_MARGIN_BASELINE /* 54 */:
                        case ConstraintLayout$LayoutParams$Table.LAYOUT_GONE_MARGIN_BASELINE /* 55 */:
                        case '8':
                        case '9':
                            return createElement(cLElement, i9, CLParser$TYPE.NUMBER, true, cArr);
                        case ',':
                        case ':':
                            break;
                        case '/':
                            int i10 = i9 + 1;
                            if (i10 >= cArr.length || cArr[i10] != '/') {
                                return cLElement;
                            }
                            this.mHasComment = true;
                            return cLElement;
                        default:
                            if (!(cLElement instanceof CLContainer) || (cLElement instanceof CLObject)) {
                                return createElement(cLElement, i9, CLParser$TYPE.KEY, true, cArr);
                            }
                            CLElement cLElementCreateElement = createElement(cLElement, i9, CLParser$TYPE.TOKEN, true, cArr);
                            CLToken cLToken = (CLToken) cLElementCreateElement;
                            if (cLToken.validate(c, i9)) {
                                return cLElementCreateElement;
                            }
                            throw new CLParsingException("incorrect token <" + c + "> at line " + this.mLineNumber, cLToken);
                    }
                }
            }
            cLElement.setEnd(i9 - 1);
            CLElement container = cLElement.getContainer();
            container.setEnd(i9);
            return container;
        }
        return cLElement;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:108:0x0050 A[EDGE_INSN: B:108:0x0050->B:24:0x0050 BREAK  A[LOOP:1: B:14:0x0036->B:89:0x014b], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:109:0x00b3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:112:0x014b A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:25:0x0054  */
    /* JADX WARN: Code duplicated, block: B:27:0x005a  */
    /* JADX WARN: Code duplicated, block: B:29:0x0062  */
    /* JADX WARN: Code duplicated, block: B:31:0x0068 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x006a  */
    /* JADX WARN: Code duplicated, block: B:33:0x0071  */
    /* JADX WARN: Code duplicated, block: B:34:0x0076  */
    /* JADX WARN: Code duplicated, block: B:36:0x007c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:37:0x007e  */
    /* JADX WARN: Code duplicated, block: B:38:0x0085  */
    /* JADX WARN: Code duplicated, block: B:39:0x008a  */
    /* JADX WARN: Code duplicated, block: B:41:0x0090  */
    /* JADX WARN: Code duplicated, block: B:43:0x0097  */
    /* JADX WARN: Code duplicated, block: B:44:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:46:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:51:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:55:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:57:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:59:0x00ea A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:79:0x0120  */
    /* JADX WARN: Code duplicated, block: B:81:0x012b  */
    /* JADX WARN: Code duplicated, block: B:84:0x0138  */
    public CLObject parse() throws CLParsingException {
        boolean z8;
        long j9;
        char c;
        long j10;
        CLToken cLToken;
        long j11;
        char[] charArray = this.mContent.toCharArray();
        int length = charArray.length;
        int i9 = 1;
        this.mLineNumber = 1;
        boolean z9 = false;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                i10 = -1;
                break;
            }
            char c9 = charArray[i10];
            if (c9 == '{') {
                break;
            }
            if (c9 == '\n') {
                this.mLineNumber++;
            }
            i10++;
        }
        if (i10 == -1) {
            throw new CLParsingException("invalid json content", null);
        }
        CLObject cLObjectAllocate = CLObject.allocate(charArray);
        cLObjectAllocate.setLine(this.mLineNumber);
        cLObjectAllocate.setStart(i10);
        int i11 = i10 + 1;
        CLElement container = cLObjectAllocate;
        while (i11 < length) {
            char c10 = charArray[i11];
            if (c10 == '\n') {
                this.mLineNumber += i9;
            }
            if (this.mHasComment) {
                if (c10 == '\n') {
                    this.mHasComment = z9;
                    if (container == null) {
                        break;
                        break;
                    }
                    if (container.isDone()) {
                        container = getNextJsonElement(i11, c10, container, charArray);
                    } else if (container instanceof CLObject) {
                        if (c10 == '}') {
                            container.setEnd(i11 - 1);
                        } else {
                            container = getNextJsonElement(i11, c10, container, charArray);
                        }
                    } else if (container instanceof CLArray) {
                        z8 = container instanceof CLString;
                        if (z8) {
                            j11 = container.mStart;
                            if (charArray[(int) j11] == c10) {
                                container.setStart(j11 + 1);
                                container.setEnd(i11 - 1);
                            }
                        } else {
                            if (container instanceof CLToken) {
                                cLToken = (CLToken) container;
                                if (!cLToken.validate(c10, i11)) {
                                    throw new CLParsingException("parsing incorrect token " + cLToken.content() + " at line " + this.mLineNumber, cLToken);
                                }
                            }
                            if (container instanceof CLKey) {
                                j9 = container.mStart;
                                c = charArray[(int) j9];
                                if (c != '\'') {
                                    container.setStart(j9 + 1);
                                    container.setEnd(i11 - 1);
                                } else {
                                    container.setStart(j9 + 1);
                                    container.setEnd(i11 - 1);
                                }
                            } else {
                                j9 = container.mStart;
                                c = charArray[(int) j9];
                                if (c != '\'') {
                                    container.setStart(j9 + 1);
                                    container.setEnd(i11 - 1);
                                } else {
                                    container.setStart(j9 + 1);
                                    container.setEnd(i11 - 1);
                                }
                            }
                            if (!container.isDone()) {
                                j10 = i11 - 1;
                                container.setEnd(j10);
                                if (c10 != '}') {
                                    container = container.getContainer();
                                    container.setEnd(j10);
                                    if (container instanceof CLKey) {
                                        container = container.getContainer();
                                        container.setEnd(j10);
                                    }
                                } else {
                                    container = container.getContainer();
                                    container.setEnd(j10);
                                    if (container instanceof CLKey) {
                                        container = container.getContainer();
                                        container.setEnd(j10);
                                    }
                                }
                            }
                        }
                        if (!container.isDone()) {
                        }
                    } else if (c10 == ']') {
                        container.setEnd(i11 - 1);
                    } else {
                        container = getNextJsonElement(i11, c10, container, charArray);
                    }
                    i9 = i9;
                    if (!container.isDone()) {
                    }
                } else {
                    i9 = i9;
                }
            } else {
                if (container == null) {
                    break;
                }
                if (container.isDone()) {
                    container = getNextJsonElement(i11, c10, container, charArray);
                } else if (container instanceof CLObject) {
                    if (c10 == '}') {
                        container.setEnd(i11 - 1);
                    } else {
                        container = getNextJsonElement(i11, c10, container, charArray);
                    }
                } else if (container instanceof CLArray) {
                    z8 = container instanceof CLString;
                    if (z8) {
                        j11 = container.mStart;
                        if (charArray[(int) j11] == c10) {
                            container.setStart(j11 + 1);
                            container.setEnd(i11 - 1);
                        }
                    } else {
                        if (container instanceof CLToken) {
                            cLToken = (CLToken) container;
                            if (!cLToken.validate(c10, i11)) {
                                throw new CLParsingException("parsing incorrect token " + cLToken.content() + " at line " + this.mLineNumber, cLToken);
                            }
                        }
                        if ((container instanceof CLKey) || z8) {
                            j9 = container.mStart;
                            c = charArray[(int) j9];
                            if ((c != '\'' || c == '\"') && c == c10) {
                                container.setStart(j9 + 1);
                                container.setEnd(i11 - 1);
                            }
                        }
                        if (!container.isDone() && (c10 == '}' || c10 == ']' || c10 == ',' || c10 == ' ' || c10 == '\t' || c10 == '\r' || c10 == '\n' || c10 == ':')) {
                            j10 = i11 - 1;
                            container.setEnd(j10);
                            if (c10 != '}' || c10 == ']') {
                                container = container.getContainer();
                                container.setEnd(j10);
                                if (container instanceof CLKey) {
                                    container = container.getContainer();
                                    container.setEnd(j10);
                                }
                            }
                        }
                    }
                    if (!container.isDone() && (!(container instanceof CLKey) || ((CLKey) container).mElements.size() > 0)) {
                        container = container.getContainer();
                    }
                } else if (c10 == ']') {
                    container.setEnd(i11 - 1);
                } else {
                    container = getNextJsonElement(i11, c10, container, charArray);
                }
                i9 = i9;
                if (!container.isDone()) {
                }
            }
            i11++;
            i9 = i9;
            z9 = false;
        }
        while (container != null && !container.isDone()) {
            if (container instanceof CLString) {
                container.setStart(((int) container.mStart) + 1);
            }
            container.setEnd(length - 1);
            container = container.getContainer();
        }
        if (sDebug) {
            System.out.println("Root: " + cLObjectAllocate.toJSON());
        }
        return cLObjectAllocate;
    }

    public static CLObject parse(String str) {
        return new CLParser(str).parse();
    }
}
