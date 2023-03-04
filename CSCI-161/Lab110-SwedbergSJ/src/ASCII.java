import java.util.ArrayList;
import java.util.List;

/**
 * @author Samuel Swedberg
 * @version 11/30/22
 * 
 * The ASCII class holds information related to printing ASCII Tables
 */
public class ASCII {
    private final List<Column> columns = new ArrayList<>();
    private final List<Row> data = new ArrayList<>();
    private int maxWidth = Integer.MAX_VALUE;

    /**
     * @return columns
     */
    public List<Column> getColumns() {
        return columns;
    }
    
    /**
     * @return data
     */
    public List<Row> getData() {
        return data;
    }

    /**
     * @return maxWidth
     */
    public int getNaxWidth() {
        return maxWidth;
    }

    /**
     * @param maxWidth
     */
    public void setMaxWidth(int maxWidth) {
        this.maxWidth = maxWidth;
    }
    
    public static class Column {

        private String name;
        private int width;

        public Column(String name) {
            this.name = name;
        }
    }

    public static class Row {

        private final List<String> values = new ArrayList<>();

        public List<String> getValues() {
            return values;
        }
    }
    
    /**
     * Calculates width
     */
    public void calcWidth() {

        for (Column column : columns) {
            column.width = column.name.length() + 1;
        }

        for (Row row : data) {
            int colIdx = 0;
            for (String value : row.values) {
                Column column = columns.get(colIdx);
                if (value == null) continue;

                column.width = Math.max(column.width, value.length() + 1);
                colIdx++;
            }
        }

        for (Column column : columns) {
            column.width = Math.min(column.width, maxWidth);
        }
    }

    /**
     * @param columns, sb
     */
    private void writeColumnNames(List<Column> columns, StringBuilder sb) {
        sb.append("| ");
        for (Column column : columns) {
            sb.append(String.format("  %-" + (column.width) + "s", column.name));
            sb.append(" |");
        }
        sb.append("\n");
    }

    /**
     * @param columns, sb
     */
    private void writeSeparator(List<Column> columns, StringBuilder sb) {
        sb.append("+-");
        for (Column column : columns) {
            sb.append(String.format(" %-" + (column.width + 1) + "s", "").replace(' ', '-'));
            sb.append("-+");
        }
        sb.append("\n");
    }

    /**
     * @param columns, rows, sb
     */
    private void writeValues(List<Column> columns, List<Row> rows, StringBuilder sb) {
        for (Row row : rows) {
            int columnIndex = 0;
            sb.append("| ");
            for (String value : row.values) {

                if (value != null && value.length() > maxWidth)
                    value = value.substring(0, maxWidth - 1);

                sb.append(String.format("  %-" + columns.get(columnIndex).width + "s", value));
                sb.append(" |");

                columnIndex++;
            }
            sb.append("\n");
        }
    }
    
    /**
     * prints table
     */
    public void printTable() {
        StringBuilder sb = new StringBuilder();

        writeSeparator(columns, sb);
        writeColumnNames(columns, sb);
        writeSeparator(columns, sb);
        writeValues(columns, data, sb);
        writeSeparator(columns, sb);

        System.out.println(sb.toString());
    }
}
