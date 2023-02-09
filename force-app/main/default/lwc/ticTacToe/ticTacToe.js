import { LightningElement, track } from 'lwc';

const ROWS = [
  [{ index: 0, value: '' }, { index: 1, value: '' }, { index: 2, value: '' }],
  [{ index: 3, value: '' }, { index: 4, value: '' }, { index: 5, value: '' }],
  [{ index: 6, value: '' }, { index: 7, value: '' }, { index: 8, value: '' }],
];

export default class TicTacToe extends LightningElement {
  @track rows = JSON.parse(JSON.stringify(ROWS)) ;
  xIsNext = true;

  handleCellClick(event) {
    const cellIndex = event.target.dataset.index;
    const currentRow = Math.floor(cellIndex / 3);
    const currentCell = cellIndex % 3;

    if (this.rows[currentRow][currentCell].value !== '') {
      return;
    }

    this.rows[currentRow][currentCell].value = this.xIsNext ? 'X' : 'O';
    this.xIsNext = !this.xIsNext;
  }
}
